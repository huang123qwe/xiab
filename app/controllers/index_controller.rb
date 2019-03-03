class IndexController < ApplicationController
	def index
    $intro ||= Intro.last
    $services ||= Service.order("updated_at desc")
    $questions ||= Question.order("updated_at desc").limit(8)
    $advts ||= Advt.order("updated_at desc").limit(3)
    $newses ||= News.order("updated_at desc").limit(10)
    @news = $newses.first
    $cases  ||= Case.order("updated_at desc").limit(10)
    $products ||= $services.map{|service| ServiceItem.order("updated_at desc").limit(1).first}.select{|si| si.present?}
	end

  def product
    @service_items = ServiceItem.order("updated_at desc").limit(10)
  end

  def news
  end

  def about
  end


end
