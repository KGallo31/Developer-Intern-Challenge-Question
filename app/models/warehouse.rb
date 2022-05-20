class Warehouse < ApplicationRecord
    has_one :inventory
    has_many :inventoryitems, through: :inventory
    has_many :items, through: :inventoryitems

    validates :location, uniqueness: true

end
