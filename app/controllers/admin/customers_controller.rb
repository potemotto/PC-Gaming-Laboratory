class Admin::CustomersController < ApplicationController
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
