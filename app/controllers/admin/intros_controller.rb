class Admin::IntrosController < AdminBaseController
  def index
      @intro = Intro.last
  end

  def edit
      @intro = Intro.find_by_id(1) 
  end

  def update
  	intro = Intro.find_by_id(params[:id])
  	intro.update(intro_params)
    $intro = nil
  	redirect_to admin_intros_path
  end

  def destroy

  end

  def top

  end

  private 
  def intro_params
      params.require(:intro).permit(:name, :image, :tel, :user, :desc, :context, :addr)
  end
end
