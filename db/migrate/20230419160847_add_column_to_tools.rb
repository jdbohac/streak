class AddColumnToTools < ActiveRecord::Migration[7.0]

    def change 
        add_column :tools, :link, :string
        add_column :tools, :brand, :string
    end
end