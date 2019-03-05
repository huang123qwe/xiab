class Admin::NewsesController <  AdminBaseController
  def index
    @newses = Newse.order("updated_at desc")
  end

  def new 
    @newse = Newse.new
  end

  def create
    @newse = Newse.new(params_permit)
    @newse.save
    $newses = nil
    redirect_to admin_newses_path
  end

  def destroy
    newse = Newse.find_by(params[:id])
    newses.delete
    $newses = nil
    redirect_to admin_newses_path
  end

  def top
    newse = Newse.find_by(params[:id])
    newse.updated_at(updated_at: Time.now)
    $newses = nil
    redirect_to admin_newses_path
  end

  private 
  def params_permit
    params.require(:newse).permit(:name, :image, :context)
  end
end
