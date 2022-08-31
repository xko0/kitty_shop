module ItemsHelper
  def find_item
    Item.friendly.find(params[:id])
  end
end
