class Admin::UsersController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  
  def index
    @page_title = "全部用户"
    @users = User.all
  end
  
  def show
    @page_title = "用户信息"
    @user =  User.find(params[:id])
  end
  
  def new
    @page_title = "新增用户"
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to [:admin, @user], notice: "用户成功创建！"}
      else
        format.html {render :new, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @page_title = "编辑用户"
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html {redirect_to admin_users_url, notice: "用户信息更新成功！"}
      else
        format.html {render :edit, status: :unprocessabel_entiry }
      end
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html {redirect_to admin_users_url, status: see_other, notice: "该用户已经被删除！"}
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:email)
  end
end
