# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.create(name: "Victor", email: "victorandre99@yahoo.com.br", birth_date: '2004-04-29')
Teacher.create(name: "Oliver", email: "oliver99@yahoo.com.br", birth_date: '2000-11-11')

Subject.create(name: "Svelte", teacher_id: 1)
Subject.create(name: "React", teacher_id: 2)

Student.create(name: "Mateus", registration: "123456789", email: "mateus99@yahoo.com.br", birth_date: '2009-04-14', teacher_id: 1)
Student.create(name: "Marie", registration: "223651489", email: "marie99@yahoo.com.br", birth_date: '2008-03-12', teacher_id: 1)
Student.create(name: "Andreia", registration: "288866629", email: "andreia99@yahoo.com.br", birth_date: '2010-05-14', teacher_id: 1)
Student.create(name: "Sofia", registration: "743265981", email: "sofia99@yahoo.com.br", birth_date: '2006-06-06', teacher_id: 2)
Student.create(name: "Jason", registration: "541512625", email: "jason99@yahoo.com.br", birth_date: '2001-09-07', teacher_id: 2)

Admin.create(email: "admaster99@comando.com.br", password: "admin99", name: "ADM")