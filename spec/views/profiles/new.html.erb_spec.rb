require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :bio => "MyText",
      :member_id => 1
    ))
  end

  # it "renders new profile form" do
  #   render

  #   assert_select "form[action=?][method=?]", profiles_path, "post" do

  #     assert_select "textarea#profile_bio[name=?]", "profile[bio]"

  #     assert_select "input#profile_member_id[name=?]", "profile[member_id]"
  #   end
  # end
end
