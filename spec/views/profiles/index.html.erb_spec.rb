require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :bio => "MyText",
        :member_id => 2
      ),
      Profile.create!(
        :bio => "MyText",
        :member_id => 2
      )
    ])
  end

  # it "renders a list of profiles" do
  #   render
  #   assert_select "tr>td", :text => "MyText".to_s, :count => 2
  #   assert_select "tr>td", :text => 2.to_s, :count => 2
  # end
end
