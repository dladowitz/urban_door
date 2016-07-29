require 'rails_helper'

RSpec.describe TripsController, type: :controller do

  describe "GET #index" do
    subject { get :index, format: :json }

    it "returns http success" do
      subject
      expect(response).to have_http_status(:success)
    end

    context "with trips in the database" do
      let(:driver) { Driver.create(first_name: "Tony", last_name: "Stark") }
      let(:city)   { City.create(name: "Moscow") }

      before do
        5.times { create(:trip) }
      end

      it "returns all the trips" do
        subject
        @json_response = JSON.parse(response.body)
        expect(@json_response.length).to eq 5
      end

      it "should have the correct driver info" do
        create(:trip, driver: driver)

        subject
        @json_response = JSON.parse(response.body)
        expect(@json_response.last[1]["driver"]["first_name"]).to eq "Tony"
      end

      it "should have the correct city info" do
        create(:trip, city: city)

        subject
        @json_response = JSON.parse(response.body)
        expect(@json_response.last[2]["city"]["name"]).to eq "Moscow"
      end
    end
  end
end
