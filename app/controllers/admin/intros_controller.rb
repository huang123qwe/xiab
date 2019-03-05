class Admin::IntrosController < AdminBaseController
  def index
      @intro = Intro.last
  end

  def edit
      @intro = Intro.find_by(1) 
  end

  def update
  	intro = Intro.find_by(params[:id])
  	intro.update(intro_params)
  	redirect_to admin_intros_path
  end

  def destroy

  end

  def top

  end

  private 
  def intro_params
      params.require(:intro).permit(:name, :image, :tel, :user, :desc, :content)
  end
end
