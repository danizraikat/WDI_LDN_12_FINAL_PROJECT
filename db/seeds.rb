# Create admin before any users are created.
admin = User.create!(email: "dani@dani.com", password: "password", name: "Dani Al-Zraykat", brief: "Happy to be the first user of this website", role: "Admin")

# CREATING THE GAME
# Admin then needs to make a test.
test1 = Test.create!(image:"http://www.javatpoint.com/images/javascript/javascript_logo.png", name: "JavaScript", brief: "First test on the website")

# Create a second to validate the uniqueness of name.
test2 = Test.create!(image:"http://www.javatpoint.com/images/javascript/javascript_logo.png", name: "Ruby", brief: "First Ruby test on the website")

# Create a level for test1.
level1 = test1.levels.create!(title: "Level 1", brief: "Have you heard of JS?")

# Now we need to create a question for that level.
question1 = level1.questions.create!(test_id: 1, title: "Question 1", content: "What is JavaScript?")

# Now we need to create answers for that question.
answer1 = question1.answers.create!(title: "1", content: "I know what it is", correctness: false)
answer2 = question1.answers.create!(title: "2", content: "I don't know what it is", correctness: false) 
answer3 = question1.answers.create!(title: "3", content: "I kinda know what it is", correctness: true)

# PLAYING THE GAME
# Now we need a user to play the game
user1 = User.create!(email: "gerry@gerry.com", password: "password", name: "Gerry Mathe", brief: "Happy to be the seocnd user of this website", role: "User")

# User one needs to choose to play a level, by creating a LevelPlay
#   Remove max_score from this field
#   In level model, create method for level that counts the number of questions 
#   (level.questions.count)
level_play1 = user1.level_plays.create!(level_id: 1, score: "0")

# User needs to play a question in that level
question_play1 = level_play1.question_plays.create!(user_id: 1, question_id: 1, answer_id: 1)
# before_create, work out whether the answer is correct and update the score

# If the number of question_plays for that level_play = number of questions for that level, the game is finished.
# Update the level_plays score.







