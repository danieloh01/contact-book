task(:howdy) do
  pp "Hello!"
end

task(:world) do
  pp "World!"
end

task(:sample_contacts => :environment) do
  5.times do
    x.first_name = Faker::Name.first_name
    x.last_name = Faker::Name.last_name
    x.date_of_birth = Faker::Date.birthday(min_age: 0, max_age: 120)
    x.street_address_1 = Faker::Address.street_address
    x.street_address_2 = Faker::Address.secondary_address
    x.city = Faker::Address.city
    x.state = Faker::Address.state_abbr
    x.zip = Faker::Address.zip
    x.phone = Faker::PhoneNumber.phone_number
    x.notes = Faker::Movies::HarryPotter.quote
  end
end
