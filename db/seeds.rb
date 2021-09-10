# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Importing JSON programs
programs = JSON.parse(File.read(Rails.root.join('db/programs.json')))
#puts programs["programs"][0]["program"]

programs["programs"].each do |program|
  Program.create(
    description: program["program"]
  )
end

classifications = JSON.parse(File.read(Rails.root.join('db/classifications.json')))
#puts classifications["classifications"][0]["classification"]

classifications["classifications"].each do |classification|
  Classification.create(
    description: classification["classification"]
  )
end
