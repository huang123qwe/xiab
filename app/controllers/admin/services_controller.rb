class Admin::ServicesController <  AdminBaseController
  def index
    @services = Service.order("updated_at desc")
  end

  def new 
    @service = Service.new
  end

  def create
    Service.create(params_permit)
    $services = nil
    redirect_to admin_services_path
  end 


  def destroy
    Service.find_by_id(params[:id]).delete
    $services = nil
    redirect_to admin_services_path
  end

  def top
    service = Service.find_by_id(params[:id])
    service.update(updated_at: Time.now)
    $services = nil
    redirect_to admin_services_path
  end


  private 
  def params_permit
    params.require(:service).permit(:name)
  end
end
