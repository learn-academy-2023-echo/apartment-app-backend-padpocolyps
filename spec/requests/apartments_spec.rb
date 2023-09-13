require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  # Creates a user that can be used for all tests in this file
  let(:user) { User.create(
  email: 'test@example.com',
  password: 'password',
  password_confirmation: 'password'
  )}

  describe "GET /index" do
    it 'gets a list of apartments' do 
      apartment = user.apartments.create(
        street:"Testy Lane",
        unit: "20",
        city: "San Diego",
        state: "CA",
        square_footage: 1000,
        price: "5000",
        bedrooms: 1,
        bathrooms: 1.5,
        pets: 'YES',
        image:"https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXBhcnRtZW50fGVufDB8fDB8fHww&w=1000&q=80"
      )

      get '/apartments'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.first['street']).to eq("Testy Lane")
    end
  end
end
