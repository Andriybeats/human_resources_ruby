class History < ApplicationRecord
  belongs_to :employee
  belongs_to :position
  validate do
    self.errors[:date_start] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
  end
  validate do
    self.errors[:date_end] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
  end
end
