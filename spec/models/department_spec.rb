require 'rails_helper'


RSpec.describe Department, type: :model do

  it "is invalid without a name" do
    department =  Department.new(name: '')
    department.valid?
    expect(department.errors[:name]).not_to be_empty
  end

  it "abbreviation length should not bigger than 3" do
    department =  Department.new(abbreviation: '')
    department.valid?
    expect(department.errors[:abbreviation].length).to be < 3
    #expect(validates_length_of(:status_update)).is_at_most(3)
  end

=begin
  it "name must include only letters" do
    department = Department.new(name: 'str')
    department.valid?
    expect(department.errors[:name]).to match(/\A[a-zA-Z]+\z/)
  end
=end


end
