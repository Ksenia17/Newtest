# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#users
user = User.new(first_name: "Ivan",
                last_name: "Ivanov",
                email: "iv1@ukr.net",
                password: "admin123")
user.save!
user = User.new(first_name: "Sofia",
                last_name: "Petrova",
                email: "petrova1@ukr.net",
                password: "87654321")
user.save!
user = User.new(first_name: "Mari",
                last_name: "Mixeeva",
                email: "mari-mari1@ukr.net",
                password: "1234567")
user.save!
user = User.new(first_name: "Igor",
                last_name: "Kolesnic",
                email: "ig1@ukr.net",
                password: "12041968")
user.save!
# projects
Project.create! name: "11 Project", user_id: 1
Project.create! name: "12 Project", user_id: 2 
Project.create! name: "13 Project", user_id: 3
Project.create! name: "14 Project", user_id: 3
Project.create! name: "15 Project", user_id: 4
Project.create! name: "16 Project", user_id: 4
Project.create! name: "17 Project", user_id: 2
Project.create! name: "18 Project", user_id: 3
Project.create! name: "19 Project", user_id: 1
Project.create! name: "20 Project", user_id: 1
# tasks
task = Task.new(name: "Task 1",
                project_id: 1,
                user_id: 1,
                status_flg: false,
                deadline: nil,
                priority: 1)
task.save!
task = Task.new(name: "Task 2",
                project_id: 2,
                user_id: 2,
                status_flg: false,
                deadline: nil,
                priority: 2)
task.save!
task = Task.new(name: "Task 3",
                project_id: 3,
                user_id: 3,
                status_flg: false,
                deadline: nil,
                priority: 3)
task.save!
task = Task.new(name: "Task 4",
                project_id: 4,
                user_id: 4,
                status_flg: false,
                deadline: nil,
                priority: 4)
task.save!
task = Task.new(name: "Task 5",
                project_id: 5,
                user_id: 4,
                status_flg: false,
                deadline: nil,
                priority: 5)
task.save!