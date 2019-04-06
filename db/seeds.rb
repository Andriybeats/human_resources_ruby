# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
departments = Department.create([{ name: 'Soft dev', abbreviation: "std" }, { name: 'devOP', abbreviation: "DEO" }])
positions = Position.create([{name: 'Soft dev', sallary: 1000000, vacaions_days: 5}, {name: 'devOP', sallary: 21000 , vacaions_days: 5}])
employees = Employee.create(name: 'Luke', surname: 'Lukes', date_birthday: '01-01-1990', city_birthday: 'Lviv', department: departments.first, start_work: '01-01-2019', position: positions.first)
vacations = Vacation.create([{employee: employees.first, date_start: '01-01-2010', date_end: '02-01-2010'}])
History.create([{position: positions.first, employee: employees.first, date_start: '01-01-2010', date_end: '02-01-2010'}])