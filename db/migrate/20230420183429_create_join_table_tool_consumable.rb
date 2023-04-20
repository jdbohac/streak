class CreateJoinTableToolConsumable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :tools, :consumables do |t|
      # t.index [:tool_id, :consumable_id]
      # t.index [:consumable_id, :tool_id]
    end
  end
end
