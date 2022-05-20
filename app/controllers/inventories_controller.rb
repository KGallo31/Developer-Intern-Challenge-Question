class InventoriesController < ApplicationController


    def create
        render json: Inventory.create!(inventory_params),status: :ok
    end

    def index
        render json: Inventory.all,status: :ok
    end

    def show
        inventory = Inventory.find_by!(id: params[:id])
        render json: inventory, status: :ok
    end

    def destroy
        Inventory.find_by!(id: params[:id]).destroy
        render json: {},status: :ok
    end

    def update
        inventory = Inventory.find_by!(id: params[:id])
        inventory.update(inventory_params)
        render json: inventory, status: :ok
    end

    private

    def inventory_params
        params.permit(:warehouse_id,:total_price)
    end

end
