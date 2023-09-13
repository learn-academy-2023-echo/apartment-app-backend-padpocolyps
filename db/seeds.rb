
user1 = User.where(email: "testy@example.com").first_or_create(password:"password123", password_confirmation:"password123")
user2 = User.where(email: "testyLou@example.com").first_or_create(password:"password123", password_confirmation:"password123")

user1_apartments =[
  {
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
  }
]
user2_apartments =[
  {
    street:"Frosty Lane",
    unit: "20",
    city: "San Dimas",
    state: "CA",
    square_footage: 1000,
    price: "2000",
    bedrooms: 5,
    bathrooms: 1.5,
    pets: 'YES',
    image:"https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXBhcnRtZW50fGVufDB8fDB8fHww&w=1000&q=80"
  }
]

user1_apartments.each do |apartment|
  user1.apartments.create(apartment)
  p "created: #{apartment}"
end

user2_apartments.each do |apartment|
  user2.apartments.create(apartment)
  p "created: #{apartment}"
end