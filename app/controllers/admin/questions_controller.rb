class Admin::QuestionsController <  AdminBaseController

  def index
    @questions = Question.order("updated_at desc").page(params[:page])
  end

  def new
    @question =  Question.new 
  end

  def create
    question = Question.new(params_permit)
    question.save
    redirect_to admin_questions_path
    $questions = nil
  end

  def destroy
    question = Question.find_by_id(params[:id])
    question.delete
    $questions = nil
    redirect_to admin_questions_path
  end

  def edit
    @question = Question.find_by_id(params[:id])
  end

  def update
    @question = Question.find_by_id(params[:id])
    @question.update(params_permit)
    $questions = nil
    redirect_to admin_questions_path
  end

  def top
    question = Question.find_by_id(params[:id])
    question.update(updated_at: Time.now)
    $questions = nil
    redirect_to admin_questions_path
  end




  private 
  def params_permit
    params.require(:question).permit(:name, :image, :context)
  end
end
