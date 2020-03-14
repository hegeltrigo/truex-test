class AddDishToDishSizes < ActiveRecord::Migration[6.0]
  def change
    add_reference :dish_sizes, :dish, foreign_key: true
  end
end
