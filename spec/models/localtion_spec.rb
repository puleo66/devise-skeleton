require 'rails_helper'

RSpec.describe Localtion, type: :model do
  describe "validations" do

  	it "has a valid factory" do
  		expect(FactoryGirl.create(:localtion)).to be_valid
  	end

  	it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address_1) }
    it { should validate_presence_of(:address_2) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:region) }
    it { should validate_presence_of(:zip_code) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:description) }
  	it { should validate_presence_of(:member_id) }
  end

  describe "associations" do
  	it { should belong_to(:member) }
  end
end
