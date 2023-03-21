class Admin::SitesController < ApplicationController
  layout "admin"
  before_action :authenticate_user!

  def show
    @site = Site.first
  end
  
  def new
    @site = Site.new
  end
  
  def create
    @site = Site.new(site_params)
    respond_to do |format|
      if @site.save
        format.html {redirect_to admin_site_url(@site), notice: "数据保存成功！"}
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    @site = Site.first
  end
  
  def update
    @site =  Site.first
    respond_to do |format|
      if @site.update(site_params)
        format.html {redirect_to admin_site_url, notice: "数据更新成功！"}
      else
        format.html { render :edit, status: :unprocessable_entity}
      end
    end
  end
  
  def destroy
    @site = Site.first
    @site.destroy
    respond_to do |format|
      format.html {redirect_to new_admin_site_url, notice: "数据已删除！"}
    end
  end
  
  private
  def site_params
    params.require(:site).permit(:name, :slogan, :about)
  end
end
