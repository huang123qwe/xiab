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
  end

  def destory

  end


  private 
  def params_permit
    params.require(:service_items).permit(:service_id,  :desc, :context)
  end
end
