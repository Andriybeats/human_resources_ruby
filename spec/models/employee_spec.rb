require 'rails_helper'

RSpec.describe Employee, type: :model do
  context "is invalid without" do
    it " a name" do
      employee =  Employee.new(name: '')
      employee.valid?
      expect(employee.errors[:name]).not_to be_empty
    end

    it " a surname" do
      employee =  Employee.new(surname: '')
      employee.valid?
      expect(employee.errors[:surname]).not_to be_empty
    end

=begin
    it "name must include only letters" do
        department = Department.new(name: 'str')
        department.valid?
        expect(department.errors[:name]).to match(/\A[a-zA-Z]+\z/)
    end
=end
  end


=begin
  it "must be a date format" do
    employee = Employee.new(date_birthday: '10.10.2001')
    employee.valid?
    expect(employee.errors[:date_birthday]).to match(/^\d{1,2}\.\d{1,2}\.\d{4}$/)
  end
=end

end
