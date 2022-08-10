class Public::ComputersController < ApplicationController
  def index
    @computers = Computer.where(id:current_public.id)
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def edit
    @computer = Computer.find(params[:id])
  end
end
