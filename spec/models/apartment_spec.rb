require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
  )}

  it 'should validate street' do 
    apartment = user.apartments.create(
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
    expect(apartment.errors[:street]).to include("can't be blank")
  end
end
