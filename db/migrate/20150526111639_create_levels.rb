class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :test_id
      t.string :title
      t.text :brief

      t.timestamps null: false
    end
  end
end
