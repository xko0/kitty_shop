module ItemsHelper
  def find_item
    Item.find(params[:id])
  end
end
