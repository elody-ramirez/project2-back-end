require 'rails_helper'

RSpec.describe "Userplayers", type: :request do
  describe "GET /userplayers" do
    it "works! (now write some real specs)" do
      get userplayers_path
      expect(response).to have_http_status(200)
    end
  end
end
