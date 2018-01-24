require 'rails_helper'

RSpec.describe LocaltionsController, type: :controller do

  let(:member) {FactoryGirl.create(:member)}

  let(:valid_attributes) {
    { name: Faker::Superhero.name,
      address_1: Faker::Address.street_address,
      address_2: Faker::Address.secondary_address,
      city: Faker::Address.city,
      region: Faker::Address.state,
      zip_code: Faker::Address.zip_code,
      country: 'United States',
      description: Faker::Lorem.paragraph(2),
      member_id: member.id }
  }

  let(:invalid_attributes) {
    {name: nil,
     address_1: nil,
     address_2: nil,
     city: nil,
     region: nil,
     zip_code: nil,
     country: nil,
     description: nil,
     member_id: nil}
  }

  let(:valid_session) { {} }

  describe "GET #show" do
    it "assigns the requested localtion as @localtion" do
      localtion = Localtion.create! valid_attributes
      get :show, params: {:member_id => member.id, id: localtion.to_param}, session: valid_session
      expect(assigns(:localtion)).to eq(localtion)
    end
  end

  describe "GET #new" do
    it "assigns a new profile as @localtion" do
      get :new, params: {:member_id => member.id}, session: valid_session
      expect(assigns(:localtion)).to be_a(Localtion)
    end
  end

  # describe "GET #edit" do
  #   it "assigns the requested profile as @profile" do
  #     profile = Profile.create! valid_attributes
  #     get :edit, params: {:member_id => member.id, id: profile.to_param}, session: valid_session
  #     expect(assigns(:profile)).to eq(profile)
  #   end
  # end

  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new Profile" do
  #       expect {
  #         post :create, params: {:member_id => member.id, profile: valid_attributes}, session: valid_session
  #       }.to change(Profile, :count).by(0)
  #     end

  #     it "assigns a newly created profile as @profile" do
  #       post :create, params: {:member_id => member.id, profile: valid_attributes}, session: valid_session
  #       expect(assigns(:profile)).to be_a(Profile)
  #       expect(assigns(:profile)).to be_persisted
  #     end

  #     it "redirects to the created profile" do
  #       post :create, params: {:member_id => member.id, profile: valid_attributes}, session: valid_session
  #       #expect(response).to redirect_to(Profile.last)
  #       profile = member.profile
  #       expect(response).to redirect_to(member_profile_path(member, profile))
  #     end
  #   end

  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved profile as @profile" do
  #       post :create, params: {:member_id => member.id, profile: invalid_attributes}, session: valid_session
  #       expect(assigns(:profile)).to be_a_new(Profile)
  #     end

  #     it "re-renders the 'new' template" do
  #       post :create, params: {:member_id => member.id, profile: invalid_attributes}, session: valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end

end
