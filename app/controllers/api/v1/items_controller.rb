class Api::V1::ItemsController < ActionController::API

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    item = Item.create(item_params)
    redirect_to api_v1_item_path(item)
  end

  def destroy
    item = Item.find(params[:id])
    if item != nil
      item.destroy
    end
  end

  private
    def item_params
      params.permit(:name, :description, :image_url)
    end
end
