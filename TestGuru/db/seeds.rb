# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([{ name: 'Admin'}, { name: 'User'}])
admin_id = users.first.id
categories = Category.create!([{ name: 'frontend'}, { name: 'backend'}, {name: 'mobile'}])
tests = Test.create!([{ title: 'Ruby basic', level: 1, category_id: categories[1].id, author_id: admin_id},
                      { title: 'Ruby on Rails', level: 2, category_id: categories[1].id, author_id: admin_id},
                      { title: 'HTML', level: 1, category_id: categories[0].id, author_id: admin_id},
                      { title: 'Java', level: 3, category_id: categories[2].id, author_id: admin_id},
                      { title: 'Ruby Sinatra', level: 2, category_id: categories[1].id, author_id: admin_id}])
questions = Question.create!([{ body: 'Есть ли типы в Ruby', test_id: tests[0].id},
                              { body: 'Последняя версия Rails', test_id: tests[1].id},
                              { body: 'Что делает тег <b>', test_id: tests[2].id},])
answers = Answer.create!([{ body: 'Динамическая типизация', question_id: tests[0].id, correct: true},
                              { body: 'Статическая типизация', question_id: tests[0].id},
                              { body: 'Безтиповая типизация', question_id: tests[0].id},
                              { body: '4.2', question_id: tests[1].id},
                              { body: '7+', question_id: tests[1].id, correct: true},
                              { body: '1.0', question_id: tests[1].id},
                              { body: 'Создание гиперссылки', question_id: tests[2].id},
                              { body: 'Жирное начертание шрифта', question_id: tests[2].id, correct: true},
                              { body: 'Подчеркнутое начертание шрифта', question_id: tests[2].id},])
test_results = TestResult.create!({status: 'passed', test_id: tests[0].id, user_id: User.find_by(name: 'User').id})
