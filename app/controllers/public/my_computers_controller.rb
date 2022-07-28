class Public::MyComputersController < ApplicationController
  def index
    @computers = Computer.all.current_public
  end
  
  def show
    @computer = Computer.find(params[:id])
  end
  
  def edit
    @computer = Computer.find(params[:id])
  end
end
