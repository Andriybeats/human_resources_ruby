require 'csv'

class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable, :omniauth_providers => [:facebook]

  mount_uploader :avatar, AvatarUploader

  belongs_to :position
  belongs_to :department
=begin
  begin
    validates :name, format: { with: /\A[a-zA-Z]+\z/,
                               message: "only allows letters" }
    validates :surname, format: { with: /\A[a-zA-Z]+\z/,
                               message: "only allows letters" }
    validate do
      self.errors[:start_work] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
    end
    validate do
      self.errors[:date_birthday] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
    end
  end
=end
  # def self.to_csv
  #   attributes = %w{id email name}
  #
  #   CSV.generate(headers: true) do |csv|
  #     csv << attributes
  #
  #     all.each do |employee|
  #       csv << attributes.map{ |attr| employee.send(attr) }
  #     end
  #   end
  # end


  def self.from_omniauth(auth)
    employee = Employee.where(email: auth.info.email).first
    if employee
      return employee
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |employee|
        employee.email = auth.info.email
        employee.password = Devise.friendly_token[0,20]
        employee.name = auth.info.name
        employee.avatar = auth.info.image
        employee.uid = auth.uid
        employee.provider = auth.provider

        # If you are using confirmable and the provider(s) you use validate emails,
        # uncomment the line below to skip the confirmation emails.
        employee.skip_confirmation!
      end
    end
  end
end
