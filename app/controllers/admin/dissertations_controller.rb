class Admin::DissertationsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :set_dissertation, only: %i[show edit update destroy]
  
  def index
    @page_title = t(".all_dissertations")
    @dissertations = Dissertation.all
  end
  
  def show
  end

  def new
    @page_title = t(".new_dissertation")
    @dissertation = Dissertation.new
  end
  
  def create
    @dissertation = Dissertation.new(dissertation_params)
    respond_to do |format|
      if @dissertation.save
        format.html {redirect_to admin_dissertation_url(@dissertation), notice: t("dissertation_was_successfully_saved")}
      else
        format.html {render :new, status: :unprocessable_entity}
      end
    end
  end
  
  def edit
    
  end

  def update
    respond_to do |format|
      if @dissertation.update(dissertation_params)
        format.html { redirect_to admin_dissertation_rul(@dissertation), notice: t("dissertation_was_successfuly_updated")}
      else
        format.html {render :edit, status: :unprocessable_entity}
      end
    end
  end
  
  def destroy
    @dissertation.destroy
    
    respond_to do |format|
      format.html{redirect_to admin_dissertations_url, status: :see_other, notice: "dissertation_was_successfully_destroied"}
    end
  end
  
  private
  
  def dissertation_params
    params.require(:dissertation).permit(:title, :subtitle, :author, :teacher, :abstract, :language)
  end

  def set_dissertation
    @dissertation = Dissertation.find(params[:id])
  end
end
