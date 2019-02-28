class IndexController < ApplicationController
	def index

	end

  def product
    @service_items = ServiceItem.order("updated_at desc").limit(10)
  end

  def news
  end

  def about
  end


end
