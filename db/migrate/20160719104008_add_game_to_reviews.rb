class AddGameToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :game, index: true, foreign_key: true
  end
end
