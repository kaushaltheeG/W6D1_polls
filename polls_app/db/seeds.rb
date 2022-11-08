# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u1 = User.create!(username: 'Kzk')
p1 = Poll.create!(title: 'Code Poll', author: u1)
q_p1 = Question.create!(text: 'What is the best language to start with to how to learn coding?', poll: p1)
q_p2 = Question.create!(text: 'Is JavaScript the main frontend language?', poll: p1)
ac_q_p1_1 = Answerchoice.create!(text: 'Python', question: q_p1)
ac_q_p1_2 = Answerchoice.create!(text: 'JavaScript', question: q_p1)
ac_q_p1_3 = Answerchoice.create!(text: 'C', question: q_p1)
ac_q_p1_4 = Answerchoice.create!(text: 'Ruby', question: q_p1)

ac_q_p2_1 = Answerchoice.create!(text: 'Hell yeah!!', question: q_p2)
ac_q_p2_2 = Answerchoice.create!(text: 'Hell noo!!', question: q_p2)



