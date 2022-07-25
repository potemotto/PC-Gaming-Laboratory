class Admin::SystemsController < ApplicationController
  def new
    @system = System.new
  end

  def index
    @systems = System.all
  end

  def create
    @system = System.new(system_params)
    if @system.save
    redirect_to admin_systems_path
    flash[:notice] = '新しいOSデータを登録しました。'
    else
    @systems = System.all
    render :index
    end
  end

  def edit
    @system = System.find(params[:id])
  end

  def update
    @system = System.find(params[:id])
    if @system.update(system_params)
    redirect_to admin_systems_path
    flash[:notice] = 'OSデータを修正しました。'
    else
    render :edit
    end
  end

  private

  def system_params
    params.require(:systems).permit(:name,:bit_type,:DirectX,:year_of_release,:upper_memory_limit)
  end

end
