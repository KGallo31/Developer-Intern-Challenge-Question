class InventoryitemsController < ApplicationController

    def create
        # byebug
        inventoryitem = Inventoryitem.create!(inventoryitem_params)
        set_total_price(inventoryitem)
        render json: inventoryitem, stauts: :ok
    end

    def index
        render json: Inventoryitem.all,status: :ok
    end

    def show
        inventoryitem = Inventoryitem.find_by!(id: params[:id])
        render json: inventoryitem,status: :ok
    end

    def destroy
        Inventoryitem.find_by!(id: params[:id]).destroy
        render json: {},status: :ok
    end

    def update
        inventoryitem = Inventoryitem.find_by!(id: params[:id])
        inventoryitem.update(inventoryitem_params)
        set_total_price(inventoryitem)
        render json: inventoryitem,status: :ok
    end

    def set_total_price(inventoryitem)
        inventoryitem.update(total_item_price: inventoryitem.quantity*inventoryitem.item.price)
    end

    private 

    def inventoryitem_params
        params.permit(:quantity,:item_id,:inventory_id)
    end



end
