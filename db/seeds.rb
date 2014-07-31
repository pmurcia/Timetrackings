# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create name: 'Ironhack', description: 'Ironhack is all'
Project.create name: 'Ironhack 2'
Project.create description: 'Ironhack description'
Project.entries.create hours: 2, minutes: 30
 