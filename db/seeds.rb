Warehouse.create(location: "New Orleans")
Warehouse.create(location: "Pereira")

Item.create(name: "Jeep",description: "Off road car", price: 44000.00)
Item.create(name: "Sunglasses", description: "To protect you from the sun", price: 40.00)
Item.create(name: "Air Fryer", description: "Frying anything you want", price: 150.00)
Item.create(name: "Electric Saw", description: "Cutting all the wood you want... or more", price: 220.00)
Item.create(name: "Jetski", description: "For fast water travel",price: 9000.00)

Inventory.create(warehouse_id: 1)
Inventory.create(warehouse_id: 2)


Inventoryitem.create(item_id: 1,inventory_id: 1, quantity: 21,total_item_price: 924000.00)
Inventoryitem.create(item_id: 2,inventory_id: 1, quantity: 240,total_item_price: 9600.00)
Inventoryitem.create(item_id: 3,inventory_id: 2, quantity: 80, total_item_price: 12000.00)
Inventoryitem.create(item_id: 4, inventory_id: 2, quantity: 40, total_item_price: 8800.00)
Inventoryitem.create(item_id: 5, inventory_id: 2, quantity: 16, total_item_price: 144000.00)