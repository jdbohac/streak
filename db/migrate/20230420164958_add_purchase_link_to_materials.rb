class AddPurchaseLinkToMaterials < ActiveRecord::Migration[7.0]
  def change
    add_column :materials, :link, :string
  end
end
