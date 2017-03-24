require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :bio => "MyText",
      :member_id => 1
    ))
  end

  # it "renders the edit profile form" do
  #   render

  #   assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

  #     assert_select "textarea#profile_bio[name=?]", "profile[bio]"

  #     assert_select "input#profile_member_id[name=?]", "profile[member_id]"
  #   end
  # end
end
