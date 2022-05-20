class WarehousesController < ApplicationController

    def create
        render json: Warehouse.create!(location: params[:location]),status: :ok
    end

    def index
        render json: Warehouse.all,status: :ok
    end

    def show
        # Using find_by over find to catch errors
        render json: Warehouse.find_by!(id: params[:id]), status: :ok
    end

    def destroy
        Warehouse.find_by!(id: params[:id]).destroy
        render json: {},status: :ok
    end
end
