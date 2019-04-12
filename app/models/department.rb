class Department < ApplicationRecord
  #attr_reader :name, :abbreviation
=begin
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
                             message: "only allows letters" }
  validates :abbreviation, length: { maximum: 3 }
  validates :name, presence: true
=end
end
