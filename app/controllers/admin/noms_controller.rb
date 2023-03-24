class Admin::NomsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  def index
    @page_title = t(".all_ancient_books")
  end
end
