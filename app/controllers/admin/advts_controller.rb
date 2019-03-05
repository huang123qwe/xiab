class Admin::AdvtsController <  AdminBaseController
	def index
		@advts = Advt.all.order("updated_at desc")
	end

	def new
		@advt = Advt.new
	end 

	def create
		@advt = Advt.new(advt_params)
		@advt.save
		$advts = nil
		redirect_to admin_advts_path
	end

	def destroy
		@advt = Advt.find_by(params[:id])
		@advt.delete
		$advts = nil
		redirect_to admin_advts_path
	end

	def top
		advt = Advt.find_by(params[:id])
		advt.update(updated_at: Time.now)
		$advts = nil
		redirect_to admin_advts_path
	end

	private 
	def advt_params
      params.require(:advt).permit(:name, :image)
    end
end
