require 'rails_helper'

RSpec.describe History, type: :model do
=begin
 it "must be a date format" do
   history = History.new(date_start: '10.10.2001')
   history.valid?
   expect(history.errors[:date_start]).to match(/^\d{1,2}\.\d{1,2}\.\d{4}$/)
 end
 it "must be a date format" do
   history = History.new(date_end: '10.10.2001')
   history.valid?
   expect(history.errors[:date_end]).to match(/^\d{1,2}\.\d{1,2}\.\d{4}$/)
 end
=end
end
