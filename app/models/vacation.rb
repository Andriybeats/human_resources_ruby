class Vacation < ApplicationRecord
  belongs_to :employee
begin
  validate do
    self.errors[:date_start] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
  end
  validate do
    self.errors[:date_end] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
  end
end
end
