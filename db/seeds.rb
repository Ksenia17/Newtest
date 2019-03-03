# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#users
user1 = User.create(first_name: "Ivan",
                last_name: "Ivanov",
                email: "iv1@ukr.net",
                password: "admin123")

user2 = User.create(first_name: "Sofia",
                last_name: "Petrova",
                email: "petrova1@ukr.net",
                password: "87654321")

user3 = User.create(first_name: "Mari",
                last_name: "Mixeeva",
                email: "mari-mari1@ukr.net",
                password: "1234567")

user4 = User.create(first_name: "Igor",
                last_name: "Kolesnic",
                email: "ig1@ukr.net",
                password: "12041968")


# projects
project1 = user1.projects.create(name: "Project 1")
project2 = user2.projects.create(name: "Project 2")
project3 = user3.projects.create(name: "Project 3")


# tasks
task1 =project1.tasks.create(name: "Task 1",
                status_flg: false,
                deadline: nil,
                priority: 1)

task2 =project2.tasks.create(name: "Task 2",
                status_flg: false,
                deadline: nil,
                priority: 1)
task3 =project3.tasks.create(name: "Task 3",
                status_flg: false,
                deadline: nil,
                priority: 1)
