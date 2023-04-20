class CreateConsumables < ActiveRecord::Migration[7.0]
  def change
    create_table :consumables do |t|
      t.string :name
      t.string :qty
      t.string :link
      t.string :brand

      t.timestamps
    end
  end
end
