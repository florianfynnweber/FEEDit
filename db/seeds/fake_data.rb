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

def fake_school
  return Faker::Educator.secondary_school
end

def fake_address
  return Faker::Address.full_address
end

def fake_course
  return Faker::Educator.course_name
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



if (School.all.count < 2)
  School.create!(name: fake_school, email: Faker::Internet.email, address: fake_address)
end

if (!User.find_by_name("admin"))
  User.create!(name: "admin", email: 'admin@example.net', password: 'adminadmin', confirmed_at: DateTime.now, school_id: 1)
end

if User.all.count < 30
  School.all.each do |school|
    # create students
    5.times do
      User.create!(name: Faker::Movies::HarryPotter.name, email: Faker::Internet.email, level: 1, password: "useruser", school_id: school.id)
    end
    # create teacher
    5.times do
      User.create!(name: Faker::Movies::HarryPotter.name, email: Faker::Internet.email, level: 2, password: "useruser", school_id: school.id)
    end
  end
end

if Course.all.count < 20
  School.all.each do |school|
    2.times do
      Course.create!(name: fake_course, school_id: school.id)
    end
  end
end

