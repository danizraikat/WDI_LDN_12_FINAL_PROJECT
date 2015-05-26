class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :image
      t.string :name
      t.text :brief

      t.timestamps null: false
    end
  end
end
