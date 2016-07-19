class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :text
      t.references :review, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
