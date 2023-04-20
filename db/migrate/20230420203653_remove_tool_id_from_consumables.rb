class RemoveToolIdFromConsumables < ActiveRecord::Migration[7.0]
  def change
    remove_column :consumables, :tool_id, :integer
  end
end
