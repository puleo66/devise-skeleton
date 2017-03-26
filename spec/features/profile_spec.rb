require 'rails_helper'

feature "profiles" do
	let(:member) {FactoryGirl.create(:member)}

	before do
		visit new_member_session_path
		fill_in "member[email]", with: member.email
		fill_in "member[password]", with: member.password
		click_button "Log in"
	end

	scenario "host creates profile" do
		visit new_member_profile_path(member)
		#binding.pry 				#// save_and_open_page => exit
		fill_in "profile[bio]", with: FFaker::Lorem.paragraph(2)
		profile_pic_path = 'spec/fixtures/files/profile_pic.jpg'	# new
		attach_file "profile[profile_pic]", profile_pic_path		# new
		click_button "Create Profile"
		#binding.pry												# new (paperclip_override.rb)
		expect(page).to have_content("Profile was successfully created.")
		profile = Profile.last
		expect(profile).to have_attributes(profile_pic_file_name: a_value)
	end
end