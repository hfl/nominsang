class Admin::DashboardController < ApplicationController
  layout "admin"
  def home
    @page_title = "管理"
  end
end
