class Admin::PcPresetController < ApplicationController
  before_action :authenticate_admin!
  def new
    @computer = Computer.new
  end

  def create
    @computer = Computer.new(computer_params)
    @computer.public_id = -1
    if @computer.save!
    redirect_to admin_pc_preset_index_path
    flash[:notice] = '新しいプリセットを登録しました。'
    else
    @computers = Computer.where(public_id:-1)
    render :index
    end
  end


  def index
    @computers = Computer.where(public_id:-1)
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def edit
    @computer = Computer.find(params[:id])
  end

  def update
    @computer = Computer.find(params[:id])
    if @computer .update(computer_params)
    redirect_to admin_pc_preset_index_path
    flash[:notice] = 'PC情報を修正しました'
    else
    render :edit
    end
  end

  def destroy
    computer = Computer.find(params[:id])
    computer.destroy
    redirect_to admin_pc_preset_index_path
  end

  private

  def computer_params
    params.require(:computer).permit(:name,:pc_type,:cpu_list_id,:memory_capacity,:gpu_list_id,:free_storage,:storage_type,:system_id,:public_id)
  end

end
