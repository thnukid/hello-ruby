require 'rails_helper'
describe StoreController do
  describe "#index" do
    before do
      get :index
    end

    it "returns 200 code" do
      expect(response).to be_success
    end

    it 'assigns products' do
      expect(assigns(:products)).to_not be_nil
    end
  end
end
