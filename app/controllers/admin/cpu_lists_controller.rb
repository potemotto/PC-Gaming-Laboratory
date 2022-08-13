class Admin::CpuListsController < ApplicationController
  before_action :authenticate_admin!
  def new
    @cpu_list = CpuList.new
  end
  
  def create
    @cpu_list = CpuList.new(cpu_list_params)
    if @cpu_list.save
    redirect_to admin_cpu_lists_path
    flash[:notice] = '新しいCPUデータを登録しました。'
    else
    @cpu_lists = CpuList.all
    render :index
    end
  end
  
  def index
    @cpu_lists = CpuList.all
  end
  
  def show
    @cpu_list = CpuList.find(params[:id])
  end
  
  def edit
    @cpu_list = CpuList.find(params[:id])
  end
  
  def update
    @cpu_list = CpuList.find(params[:id])
    if @cpu_list.update(cpu_list_params)
    redirect_to admin_cpu_lists_path
    flash[:notice] = 'CPUデータを修正しました。'
    else
    render :edit
    end
  end
  
  
  private

  def cpu_list_params
    params.require(:cpu_list).permit(:maker,:name,:single_score,:multiscore,:clock,:number_of_cores,:number_of_threads,:year_of_release)
  end
  
end
