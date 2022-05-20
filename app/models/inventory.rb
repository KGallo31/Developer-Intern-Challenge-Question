class Inventory < ApplicationRecord
  belongs_to :warehouse
  has_many :inventoryitems
  has_many :items, through: :inventoryitems
  
end
