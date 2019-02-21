class Admin::NewsesController <  AdminBaseController
  def index
    @newes = News.order("updated_at desc")
  end

  def new 
    @news = News.new
  end

  private 
  def params_permit
    params.require(:news).permit(:name, :image)
  end
end
