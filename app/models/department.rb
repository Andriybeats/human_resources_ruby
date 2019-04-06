class Department < ApplicationRecord
  #attr_accessor :name, :abbreviation
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
                             message: "only allows letters" }
  validates :abbreviation, length: { maximum: 3 }

end
