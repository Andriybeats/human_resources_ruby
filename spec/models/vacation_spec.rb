require 'rails_helper'

RSpec.describe Vacation, type: :model do

=begin
  it "must be a date format" do
    vacation = Vacation.new(date_start: '10.10.2001')
    vacation.valid?
    expect(vacation.errors[:date_start]).to match(/^\d{1,2}\.\d{1,2}\.\d{4}$/)
  end
  it "must be a date format" do
    vacation = Vacation.new(date_end: '10.10.2001')
    vacation.valid?
    expect(vacation.errors[:date_end]).to match(/^\d{1,2}\.\d{1,2}\.\d{4}$/)
  end
=end

end
