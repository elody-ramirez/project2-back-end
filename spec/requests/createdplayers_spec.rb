require 'rails_helper'

RSpec.describe "Createdplayers", type: :request do
  describe "GET /createdplayers" do
    it "works! (now write some real specs)" do
      get createdplayers_path
      expect(response).to have_http_status(200)
    end
  end
end
