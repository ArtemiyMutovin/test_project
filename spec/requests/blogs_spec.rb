require 'rails_helper'

RSpec.describe "Blogs", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/blogs/show"
      expect(response).to have_http_status(:success)
    end
  end

end
