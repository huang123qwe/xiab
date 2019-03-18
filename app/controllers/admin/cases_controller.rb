class Admin::CasesController < AdminBaseController

  def index
    @cases = Case.order("updated_at desc").page(params[:page])
  end

  def new
    @case = Case.new()
  end

  def create
    ca = Case.new(case_params)
    ca.save
    $cases = nil
    redirect_to admin_cases_path
  end

  def destroy
    ca = Case.find_by(params[:id])
    ca.delete
    $cases = nil
    redirect_to admin_cases_path
  end

  def top
    ca = Case.find_by(params[:id])
    ca.update(updated_at: Time.now)
    $cases = nil
    redirect_to admin_cases_path
  end

  def edit
    @case = Case.find_by(params[:id])
  end

  def update
    ca = Case.find_by(params[:id])
    ca.update(case_params)
    $cases = nil
    redirect_to admin_cases_path
  end

  private 

  def case_params
      params.require(:case).permit(:name, :image, :context)
  end


end
