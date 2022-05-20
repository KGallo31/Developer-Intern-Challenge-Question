class Inventoryitem < ApplicationRecord
  belongs_to :item
  belongs_to :inventory

  validates :quantity, presence: true
  validates :quantity, numericality: {greater_than: 0}

end
