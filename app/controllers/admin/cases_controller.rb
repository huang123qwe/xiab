class Admin::CasesController < AdminBaseController

  def index
    @cases = Case.order("updated_at desc")
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

  private 

  def case_params
      params.require(:case).permit(:name, :image, :context)
  end


end
