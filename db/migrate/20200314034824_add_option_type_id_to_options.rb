class AddOptionTypeIdToOptions < ActiveRecord::Migration[6.0]
  def change
    add_reference :options, :option_type, foreign_key: true
  end
end
