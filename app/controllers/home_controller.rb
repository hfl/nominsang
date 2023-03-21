class HomeController < ApplicationController
  layout "reader"
  def index
    @page_title = "首页"
  end
end
