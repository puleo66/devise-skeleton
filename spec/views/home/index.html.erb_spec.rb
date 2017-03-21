require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it 'display the site name' do
  	render
  	expect(rendered).to have_text("Better Than AirBnB")
  end
end
