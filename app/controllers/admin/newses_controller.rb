class Admin::NewsesController <  AdminBaseController
  def index
    @newses = News.order("updated_at desc")
  end

  def new 
    @newse = News.new
  end

  def create
    @newse = News.new(params_permit)
  end

  private 
  def params_permit
    params.require(:news).permit(:name, :image)
  end
end
