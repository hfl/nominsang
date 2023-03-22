class Admin::SitesController < ApplicationController
  layout "admin"
  before_action :authenticate_user!

  def show
    @page_title = "站点"
    @site = Site.first
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
  
  private
  def site_params
    params.require(:site).permit(:name, :slogan, :about)
  end
end
