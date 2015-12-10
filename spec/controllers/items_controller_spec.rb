require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

	let(:user){User.create!(email:"user@bloccit.com", password: "helloworld")}
	let(:item){create(:item)}

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end

    
  end

end
