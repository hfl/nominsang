class Admin::ExpertsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"
  def index
    @page_title = "专家学者"
    @experts = Expert.all
  end
  
  def new
    @page_title = "新增专家学者"
    @expert = Expert.new
  end
end
