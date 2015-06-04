class CreateQuestionPlays < ActiveRecord::Migration
  def change
    create_table :question_plays do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id
      t.integer :level_play_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
