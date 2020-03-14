class AddDishToDishTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :dish_types, :dish, foreign_key: true
  end
end
