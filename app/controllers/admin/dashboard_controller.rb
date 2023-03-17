class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  layout "admin"
  def home
    @page_title = "管理"
  end
end
