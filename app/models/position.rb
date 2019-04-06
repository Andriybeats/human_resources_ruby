class Position < ApplicationRecord
  validates :sallary, {numericality: {greater_than: 0}}
end
