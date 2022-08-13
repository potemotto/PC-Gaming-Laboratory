class Admin::AriclesController < ApplicationController
before_action :authenticate_admin!
  def index
    @aricles = Aricle.all
  end

  def show
    @aricle = Aricle.find(params[:id])
  end

  def edit
    @aricle = Aricle.find(params[:id])
  end

  def update
    @aricle = Aricle.find(params[:id])
    if @aricle.update(aricle_params)
    redirect_to admin_aricles_path
    flash[:notice] = '記事を修正しました'
    else
    render :edit
    end
  end

  private

  def aricle_params
    params.require(:aricle).permit(:public_id,:game_title_id,:type_id,:title,:body)
  end
end
