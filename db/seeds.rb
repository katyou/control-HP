# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  User.create(name: 'kanrisya',email: 'mail@example.com', password: '12345678')
  User.create(name: 'teacher', email: 'sample@outlook.com', password: 'sample', kanri: 'yes')
  