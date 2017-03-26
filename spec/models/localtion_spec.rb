require 'rails_helper'

RSpec.describe Localtion, type: :model do
  describe "validations" do

  	it "has a valid factory" do
  		expect(FactoryGirl.create(:localtion)).to be_valid
  	end

  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:member_id) }
  end

  describe "associations" do
  	it { should belong_to(:member) }
  end
end
