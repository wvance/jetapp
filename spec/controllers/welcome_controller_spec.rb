require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #showLanding" do
    it "returns http success" do
      get :showLanding
      expect(response).to have_http_status(:success)
    end
  end

end
