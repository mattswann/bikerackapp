# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


file = IO.read('bikerack.json')

racks = JSON.parse(file)

racks['data'].each do |rack|

	BikeRack.create(address: rack[9], latitude: rack[10][1], longitude: rack[10][2])

end


# racks["data"][1][9] = address
# racks["data"][1][10][1] = latitude
# racks["data"][1][10][2] = longitude




