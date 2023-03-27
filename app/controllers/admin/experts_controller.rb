class Admin::ExpertsController < ApplicationController
  before_action :authenticate_user!
  layout "admin"
  def index
    @page_title = "专家学者"
    @experts = Expert.all
  end
  
  def show
    @page_title = "专家信息"
    @expert = Expert.find(params[:id])
  end
  
  def new
    @page_title = "新增专家学者"
    @expert = Expert.new
  end
  
  def create
    @expert = Expert.new(expert_params)
    respond_to do |format|
      if @expert.save
        format.html {redirect_to [:admin, @expert], notice: "专家信息已保存！"}
      else
        format.html {render :new, status: :unprocessable_entity}
      end
    end
  end
  
  def edit
    @page_title = "编辑专家信息"
    @expert = Expert.find(params[:id])
  end
  
  def update
    @expert = Expert.find(params[:id])
    respond_to do |format|
      if @expert.update(expert_params)
        format.html {redirect_to admin_expert_url(@expert), notice: "专家信息已更新！"}
      else
        format.html {render :edit, status: :unprocessable_entity}
      end
    end
  end
  
  def destroy
    @expert =  Expert.find(params[:id])
    @expert.destroy
    respond_to do |format|
      format.html {redirect_to admin_experts_url, status: :see_other, notice: "该专家信息已经删除！"}
    end
  end
  
  private
  def expert_params
    params.require(:expert).permit(:name, :alias_name, :sex, :nation, :birthday, :deathday, :occupation, :biographical_text, :avatar)
  end
end
