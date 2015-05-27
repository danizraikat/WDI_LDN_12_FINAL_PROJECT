user1 = User.create!(email: "dani@dani.com", password: "password", name: "Dani Al-Zraykat", brief: "Happy to be the first user of this website", role: "Admin")
user2 = User.create!(email: "gerry@gerry.com", password: "password", name: "Gerry Mathe", brief: "Happy to be the seocnd user of this website", role: "User")

test1 = Test.create!(image:"http://www.javatpoint.com/images/javascript/javascript_logo.png", name: "JavaScript", brief: "First test on the website")
test2 = Test.create!(image:"http://www.javatpoint.com/images/javascript/javascript_logo.png", name: "Ruby", brief: "First Ruby test on the website")

levelJS1 = Level.create!(test_id: 1, title: "Level 1", brief: "Have you heard of JS?")
levelR1 = Level.create!(test_id: 2, title: "Level 1", brief: "Have you heard of Ruby?")

questionJS1 = Question.create!(test_id: 1, level_id: 2, title: "Question 1", content: "What is JavaScript?")
questionJS1 = Question.create!(test_id: 1, level_id: 2, title: "Question 1", content: "What is JavaScript?")

answerJS1 = Answer.create!(question_id: 1, title: "1", content: "I know what it is", correctness: false)
answerJS2 = Answer.create!(question_id: 1, title: "2", content: "I kinda know what it is", correctness: true)
answerJS3 = Answer.create!(question_id: 1, title: "3", content: "I don't know what it is", correctness: false) 

level_playJS1 = LevelPlay.create!(user_id: 1, level_id: 1, max_score: "1", score: "0")

question_playJS1 = QuestionPlay.create!(user_id: 1, question_id: 1, answer_id: 1, level_play_id: 1, score: "0")










