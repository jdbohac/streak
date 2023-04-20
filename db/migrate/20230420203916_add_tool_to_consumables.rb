class AddToolToConsumables < ActiveRecord::Migration[7.0]
  def change
    add_reference :consumables, :tool, null: true, foreign_key: true
  end
end
