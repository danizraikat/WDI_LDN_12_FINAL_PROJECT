class ChangeLevelPlaysScoreAndMaxScoreFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :level_plays, :score, :integer
    change_column :level_plays, :max_score, :integer
  end
end
