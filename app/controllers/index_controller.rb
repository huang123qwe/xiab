class IndexController < ApplicationController
  layout "fro"

  before_action :init
  
	def index
    @news = $newses.first
	end

  def product
    if params[:id].present?
      @service_item = ServiceItem.find_by_id(params[:id])
    end
    @service_item  ||= ServiceItem.order("updated_at desc").first
    @service_items = ServiceItem.where.not(id: @service_item.id).order("updated_at desc").limit(10)
  end

  def news
    if params[:id].present?
      @news = Newse.find_by_id(params[:id])
    end
    @news ||= Newse.order("updated_at desc").first
    @newses = $newses.select{|x| x.id != @news.id}
  end

  def about

  end

  def intro
     @service_items = ServiceItem.order("updated_at desc").limit(4)
  end

  def case
    if params[:id].present?
      @case = Case.find_by_id(params[:id])
    end
    @case ||= Case.order("updated_at desc").first
    @cases = $cases.select{|x| x.id != @case.id }
  end


  def question
    if params[:id].present?
      question = Question.find_by_id(params[:id])
    end
    @question ||= Question.order("updated_at desc").first
    @questions = $questions.select{|x| x.id != question.id }
  end


  def init 
    $intro ||= Intro.last
    $services ||= Service.order("updated_at desc")
    $questions ||= Question.order("updated_at desc").limit(8)
    $advts ||= Advt.order("updated_at desc").limit(3)
    $newses ||= Newse.order("updated_at desc").limit(10)
    $cases  ||= Case.order("updated_at desc").limit(10)
    $products ||= $services.map{|service| ServiceItem.where(service_id: service.id).order("updated_at desc").limit(1).first}.select{|si| si.present?}
  end

  


end
