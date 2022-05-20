class ItemsController < ApplicationController

    def create
        item = Item.create!(item_params)
        item.update(description: "N/A") unless item_params[:description]
        render json: item,status: :ok
    end

    def index
        render json: Item.all,status: :ok
    end

    def show
        render json: Item.find_by!(id: params[:id]),status: :ok
    end

    def destroy
        Item.find_by!(id: params[:id]).destroy
        render json: {},status: :ok
    end

    def update
        item = Item.find_by!(id: params[:id])
        item.update(item_params)
        render json: item, status: :ok
    end

    private

    def item_params
        params.permit(:name,:price,:description)
    end

end
