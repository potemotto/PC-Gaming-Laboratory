class Admin::GpuListsController < ApplicationController
  before_action :authenticate_admin!
  def new
    @gpu_list = GpuList.new
  end
  
  def create
    @gpu_list = GpuList.new(gpu_list_params)
    if @gpu_list.save
    redirect_to admin_gpu_lists_path
    flash[:notice] = '新しいGPUデータを登録しました。'
    else
    @gpu_lists = GpuList.all
    render :index
    end
  end
  
  def index
    @gpu_lists = GpuList.all
  end
  
  def show
    @gpu_list = GpuList.find(params[:id])
  end
  
  def edit
    @gpu_list = GpuList.find(params[:id])
  end


  def update
    @gpu_list = GpuList.find(params[:id])
    if @gpu_list.update(gpu_list_params)
    redirect_to admin_gpu_lists_path
    flash[:notice] = 'GPUデータを修正しました。'
    else
    render :edit
    end
  end
  
  private

  def gpu_list_params
    params.require(:gpu_list).permit(:maker,:name,:score,:video_memory,:DirectX,:year_of_release)
  end
  
end