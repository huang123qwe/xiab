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
		redirect_to admin_advts_path
	end

	def destory
		@advt = Advt.find_by(params[:id])
		@advt.delete
		redirect_to admin_advts_path
	end

	private 
	def advt_params
      params.require(:advt).permit(:name, :image)
    end
end
