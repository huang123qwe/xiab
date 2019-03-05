class Admin::ServiceItemsController <  AdminBaseController
  def index
    @service_items = ServiceItem.order("updated_at desc").page(params[:page])
  end

  def new
    @service_item = ServiceItem.new
  end

  def show
    @service_item = ServiceItem.find_by_id(params[:id])
  end

  def create
    @service_item = ServiceItem.new(params_permit)
    @service_item.save
    $products = nil
    redirect_to admin_service_items_path
  end

  def destroy
    service_item = ServiceItem.find_by(params[:id])
    service_item.delete
    $products = nil
    redirect_to admin_service_items_path
  end

  def top
    service_item = ServiceItem.find_by(params[:id])
    service_item.update(updated_at: Time.now)
    $products = nil
    redirect_to admin_service_items_path
  end


  private 
  def params_permit
    params.require(:service_item).permit(:service_id,  :desc, :context, :image)
  end
end
