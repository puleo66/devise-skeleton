require 'rails_helper'

feature "member session -" do
	let(:member) {FactoryGirl.create(:member)}

	scenario "member visits the site to log in" do
		visit root_path
		click_link "Log in"
		fill_in_signin_fields
		expect(page).to have_content("Signed in successfully.") 
	end

	scenario "member logs out of site" do
		#click_link "Sign out"
		page.find(:xpath, "//a[@href='/members/sign_out']").click
		expect(page).to have_content("Signed out successfully.")
	end

	def fill_in_signin_fields
		fill_in "member_email", with: member.email
		fill_in "member_password", with: member.password
		click_button "Log in"
	end
end