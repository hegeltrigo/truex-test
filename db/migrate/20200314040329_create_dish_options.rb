class CreateDishOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_options do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
