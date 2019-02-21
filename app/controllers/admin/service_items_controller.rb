class Admin::ServiceItemsController <  AdminBaseController
  def index
    @service_items = ServiceItem.order("updated_at desc").page(params[:page])
  end

  def new
    @service_item = ServiceItem.new
  end

  def create
    
  end

  def destory

  end


  private 
  def params_permit
    params.require(:service_items).permit(:name, :image)
  end
end
