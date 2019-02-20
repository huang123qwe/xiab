class Admin::AdvtsController <  AdminBaseController
	def index
		@advts = Advt.where(status: 0).order("updated_at desc")
	end

	def new
		@advt = Advt.new
	end 

	def create
		@advt = Advt.new(advt_params)
		@advt.save
		redirect_to admin_advts_path
	end

	private 
	def advt_params
      params.require(:advt).permit(:name, :image)
    end
end
