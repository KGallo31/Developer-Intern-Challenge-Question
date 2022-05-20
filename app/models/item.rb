class Item < ApplicationRecord
    has_many :inventoryitems
    has_many :inventories, through: :inventoryitems
    has_many :warehouses, through: :inventories

    validates :name, presence: true
    validates :price, presence: true
    
end
