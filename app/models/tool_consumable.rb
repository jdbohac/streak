class ToolConsumable < ApplicationRecord
    belongs_to :consumables
    belongs_to :tools
end