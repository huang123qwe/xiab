class Admin::ServicesController <  AdminBaseController
  def index
    @services = Service.order("updated_at desc")
  end

  def new 
    @service = Service.new
  end

  def create
    Service.create(params_permit)
    redirect_to admin_services_path
  end 


  def destroy
    Service.find_by(params[:id]).delete
    redirect_to admin_services_path
  end


  private 
  def params_permit
    params.require(:service).permit(:name)
  end
end
