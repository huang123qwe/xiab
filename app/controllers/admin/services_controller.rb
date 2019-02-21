class Admin::ServicesController <  AdminBaseController
  def index
    @services = Service.order("updated_at desc")
  end

  def new 
    @service = Service.new
  end


  private 
  def params_permit
    params.require(:services).permit(:name, :image)
  end
end
