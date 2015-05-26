class CreateLevelPlays < ActiveRecord::Migration
  def change
    create_table :level_plays do |t|
      t.integer :user_id
      t.integer :level_id
      t.string :max_score
      t.string :score

      t.timestamps null: false
    end
  end
end
