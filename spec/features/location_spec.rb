require 'rails_helper'

feature 'locations' do
	
	let(:member) {FactoryGirl.create(:member) }

	before do
		login_as(member, scope: :member)
	end

	scenario "host creates location" do
		visit new_member_location_path(member)
		fill_in "location(name)", with: Faker::Superhero.name
		fill_in "location(address_1)", with: Faker::Address.street_address
		fill_in "location(address_2)", with: Faker::Address.secondary_address
		fill_in "location(city)", with: Faker::Address.city
		fill_in "location(region)", with: Faker::Address.state
		fill_in "location(zip_code)", with: Faker::Address.zip_code
		select "US", from: "Country"
		fill_in "location(description)", with: Faker::Lorem.paragraph(2)
		click_button "Create Location"
		expect(page).to have_content("Location was successfully created.")
	end
end