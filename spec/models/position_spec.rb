require 'rails_helper'

RSpec.describe Position, type: :model do
  context "is invalid without" do
=begin
    it " a name" do
      position =  Position.new(name: 'ss')
      position.valid?
      expect(position.errors[:name]).not_to be_empty
    end
=end
    it " a sallary" do
      position =  Position.new(sallary: '')
      position.valid?
      expect(position.errors[:sallary]).not_to be_empty
    end
  end

end
