class RemovePostFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_reference :favorites, :post, foreign_key: true
  end
end
