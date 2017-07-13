# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mission = Mission.create(name: "Colombia Cali")
zones = Zone.create([
    { name: "Popayan", mission_id: mission.id },
    { name: "Calima", mission_id: mission.id },
    { name: "Villa Colombia", mission_id: mission.id },
    { name: "San Fernando", mission_id: mission.id },
    { name: "Cordillera", mission_id: mission.id },
    { name: "Zarza", mission_id: mission.id },
    { name: "Tulua", mission_id: mission.id },
    { name: "Palmira", mission_id: mission.id },
    { name: "Pasto", mission_id: mission.id }
  ])

zones.each do |zone|
  4.times { District.create(name: Faker::Number.unique.between(1, 4), zone_id: zone.id ) }
  Faker::Number.unique.clear
end

District.all.each do |district|
  3.times { Area.create(name: Faker::Pokemon.unique.location, district_id: district.id) }
  Faker::Pokemon.unique.clear
end

Area.all.each do |area|
  Companionship.create(mission_id: mission.id, area_id: area.id)
end

Companionship.all.each do |companionship|
  2.times { Missionary.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birth_date: Faker::Date.birthday(18, 25),
    nationality: Faker::Pokemon.name,
    start_date: Faker::Date.backward(700),
    companionship_id: companionship.id
  )}
end
