require 'faker'

15.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end
