class CreateLineOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :line_options do |t|
      t.references :line_dish, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
