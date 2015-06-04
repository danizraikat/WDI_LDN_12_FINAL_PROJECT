admin = User.create!(email: "dani@dani.com", password: "password", name: "Dani Al-Zraykat", brief: "Happy to be the first user of this website", role: "Admin")


test1 = Test.create!(image:"http://www.javatpoint.com/images/javascript/javascript_logo.png", name: "Ruby", brief: "Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan. According to its authors, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, and Lisp. It supports multiple programming paradigms, including functional, object-oriented, and imperative. It also has a dynamic type system and automatic memory management.")

  levelR1 = test1.levels.create!(title: "Ruby Level 1", brief: "Intro to Ruby")
  levelR2 = test1.levels.create!(title: "Ruby Level 2", brief: "More Ruby?")
  levelR3 = test1.levels.create!(title: "Ruby Level 3", brief: "For Ruby Ninjas")

test2 = Test.create!(image:"http://www.javatpoint.com/images/javascript/javascript_logo.png", name: "JavaScript", brief: "JavaScript is a dynamic programming language. It is most commonly used as part of web browsers, whose implementations allow client-side scripts to interact with the user, control the browser, communicate asynchronously, and alter the document content that is displayed. It is also used in server-side network programming with runtime environments such as Node.js, game development and the creation of desktop and mobile applications.")


questionR1 = levelR1.questions.create!(test_id: 1, title: "Question 1", content: "What is everything in Ruby?")

  answerR1 = questionR1.answers.create!(title: "1", content: "Object", correctness: true)
  answerR2 = questionR1.answers.create!(title: "2", content: "Class", correctness: false) 
  answerR3 = questionR1.answers.create!(title: "3", content: "Variable", correctness: false)


questionR2 = levelR1.questions.create!(test_id: 1, title: "Question 2", content: "What is the Ruby equivalent of Express?")

  answerR4 = questionR2.answers.create!(title: "1", content: "SuperFast", correctness: false)
  answerR5 = questionR2.answers.create!(title: "2", content: "Rails", correctness: false)
  answerR6 = questionR2.answers.create!(title: "3", content: "Sinatra", correctness: true)

questionR3 = levelR1.questions.create!(test_id: 1, title: "Question 3", content: "What is the comment sign in Ruby?")

  answerR7 = questionR3.answers.create!(title: "1", content: "//", correctness: false)
  answerR8 = questionR3.answers.create!(title: "2", content: "#", correctness: true)
  answerR9 = questionR3.answers.create!(title: "3", content: "--", correctness: false)

#Ruby LEVEL 2 qustions:
questionR4 = levelR2.questions.create!(test_id: 1, title: "Question 1", content: "What is ruby?")

  answerR10 = questionR4.answers.create!(title: "1", content: "Programming language", correctness: false)
  answerR11 = questionR4.answers.create!(title: "2", content: "Name of a computer program", correctness: true)
  answerR12 = questionR4.answers.create!(title: "3", content: "Diamond toy", correctness: false)

questionR5 = levelR2.questions.create!(test_id: 1, title: "Question 2", content: "Which of the following is not a direct sublclass of a Numeric Ruby class?")

  answerR13 = questionR5.answers.create!(title: "1", content: "Fixnum", correctness: true)
  answerR14 = questionR5.answers.create!(title: "2", content: "Float", correctness: false)
  answerR15 = questionR5.answers.create!(title: "3", content: "Complex", correctness: false)

questionR6 = levelR2.questions.create!(test_id: 1, title: "Question 2", content: "Which of the following is not a direct sublclass of a Numeric Ruby class?")

  answerR16 = questionR6.answers.create!(title: "1", content: "Fixnum", correctness: true)
  answerR17 = questionR6.answers.create!(title: "2", content: "Float", correctness: false)
  answerR18 = questionR6.answers.create!(title: "3", content: "Complex", correctness: false)

user1 = User.create!(email: "gerry@gerry.com", password: "password", name: "Gerry Mathe", brief: "Happy to be the seocnd user of this website", role: "User")

# User1 needs to choose to play a level, by creating a LevelPlay
#   Remove max_score from this field
#   In level model, create method for level that counts the number of questions 
#   (level.questions.count)

level_play1 = user1.level_plays.create!(level_id: 1, score: "0")
level_play2 = user1.level_plays.create!(level_id: 2, score: "0")
level_play3 = user1.level_plays.create!(level_id: 3, score: "0")

# User needs to play a question in that level
question_play1 = level_play1.question_plays.create!(user_id: 1, question_id: 1, answer_id: 1)
# before_create, work out whether the answer is correct and update the score

# If the number of question_plays for that level_play = number of questions for that level, the game is finished.
# Update the level_plays score.







