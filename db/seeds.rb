# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: 'jo', last_name: 'tammy')
Student.create(first_name: 'bo', last_name: 'smith')
Student.create(first_name: 'lo', last_name: 'johnson')
Student.create(first_name: 'mo', last_name: 'blyat')

SchoolClass.create(title: 'red', room_number: 5)
SchoolClass.create(title: 'blue', room_number: 6)
SchoolClass.create(title: 'green', room_number:1 )
SchoolClass.create(title: 'yellow', room_number: 67)