class RenameToolsIdInConsumablesToToolId < ActiveRecord::Migration[7.0]
  def change
    rename_column :consumables, :tools_id, :tool_id
  end
end
