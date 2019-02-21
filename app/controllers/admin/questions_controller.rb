class Admin::QuestionsController <  AdminBaseController

  def index
    @questions = Question.order("updated_at desc").page(params[:page])
  end

  def new
    @question =  Question.new 
  end

  def create

  end

  def destory

  end




  private 
  def params_permit
    params.require(:question).permit(:name, :image)
  end
end
