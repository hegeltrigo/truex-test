class AddSlicesToDishSizes < ActiveRecord::Migration[6.0]
  def change
    add_column :dish_sizes, :slices, :integer
  end
end
