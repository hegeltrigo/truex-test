class CreateLineDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :line_dishes do |t|
      t.references :order, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
