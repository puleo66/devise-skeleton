require 'rails_helper'

feature 'localtions' do
	
	let(:member) {FactoryGirl.create(:member) }

	before do
		login_as(member, scope: :member)
	end

	scenario "host creates location" do
		visit new_member_localtion_path(member)
		#binding.pry
		fill_in "localtion[name]", with: Faker::Superhero.name
		fill_in "localtion[address_1]", with: Faker::Address.street_address
		fill_in "localtion[address_2]", with: Faker::Address.secondary_address
		fill_in "localtion[city]", with: Faker::Address.city
		fill_in "localtion[region]", with: Faker::Address.state
		fill_in "localtion[zip_code]", with: Faker::Address.zip_code
		#select "United States", from: "Country", :match => :first
		find(:select, 'localtion[country]').first(:option, 'United States').select_option
		fill_in "localtion[description]", with: Faker::Lorem.paragraph(2)
		click_button "Create Location"
		binding.pry
		expect(page).to have_content("Localtion was successfully created.")
	end
end