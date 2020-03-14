class CreateDishSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_sizes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
