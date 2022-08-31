class Admins::ItemsController < AdminsController


  def index
    @items = Item.all
  end

  def new
    
  end

  def create
    @item = Item.create(item_params)
    redirect_to admins_path
  end

  def show
    @item = find_item
  end

  private

  def item_params
    params.permit(:title, :description, :price, :image_url)
  end

end
