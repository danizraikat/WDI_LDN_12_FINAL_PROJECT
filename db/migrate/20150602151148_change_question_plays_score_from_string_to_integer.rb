class ChangeQuestionPlaysScoreFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :question_plays, :score, :integer
  end
end
