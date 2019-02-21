class Admin::IntrosController < AdminBaseController
  def index
      @intro = Intro.find_by(1)

  end

  def edit
      @intro = Intro.find_by(1) 
  end

  def update

  end

  private 
  def advt_params
      params.require(:advt).permit(:name, :image)
    end
end
