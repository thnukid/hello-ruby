require "rails_helper"

RSpec.describe PayTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pay_types").to route_to("pay_types#index")
    end

    it "routes to #new" do
      expect(:get => "/pay_types/new").to route_to("pay_types#new")
    end

    it "routes to #show" do
      expect(:get => "/pay_types/1").to route_to("pay_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pay_types/1/edit").to route_to("pay_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pay_types").to route_to("pay_types#create")
    end

    it "routes to #update" do
      expect(:put => "/pay_types/1").to route_to("pay_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pay_types/1").to route_to("pay_types#destroy", :id => "1")
    end

  end
end
