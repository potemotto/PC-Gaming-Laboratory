class Admin::CustomersController < ApplicationController
   before_action :authenticate_admin!
  def index
    @publics = Public.all
  end
  
  def show
    @public = Public.find(params[:id])
  end
  
  def edit
    @public = Public.find(params[:id])
  end
end
