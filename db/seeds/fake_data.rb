
require 'faker'

def fake_name()
  i = rand(0..2)
  case i
  when 0
    return Faker::Movies::HarryPotter.character
  when 1
    return Faker::Movies::LordOfTheRings.character
  when 2
    return Faker::Movies::StarWars.character
  else
    # type code here
  end
end

def fake_desc
  i = rand(0..2)
  case i
  when 0
    return Faker::Movies::HarryPotter.quote
  when 1
    return Faker::Movies::LordOfTheRings.quote
  when 2
    return Faker::Movies::StarWars.quote
  else
    # type code here
  end
end

if (!User.find_by_name("admin"))
  User.create!(name: "admin", email: 'admin@example.net', password: 'adminadmin', admin: true, confirmed_at: DateTime.now)
end