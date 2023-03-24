class Admin::JournalsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  def index
  end
end
