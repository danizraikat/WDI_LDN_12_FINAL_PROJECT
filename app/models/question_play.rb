class QuestionPlay < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  belongs_to :answer
  belongs_to :level_play
  
  # validates_associated :user, :question, :answer, :level_play
  # validates :score, numericality: { only_integer: true }
  # validates :user_id, :question_id, :answer_id, :level_play_id, presence: true 

  #before_create = before saved in db
  before_create :update_correctness 
  after_save  :update_level_score

  def update_correctness 
    if answer.correctness == true
      self.score = 1 
    else 
      self.score = 0
    end
  end

  def update_level_score
    if complete?
      self.level_play.score = number_of_correct_answers
      self.level_play.save
    end 
  end

  def number_of_correct_answers
    self.level_play.question_plays.map(&:score).inject(:+)
  end

  def complete?
    self.level_play.question_plays.count == self.level_play.level.questions.count
  end

end
