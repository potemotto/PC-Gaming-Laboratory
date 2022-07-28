class Public::AriclesController < ApplicationController
  def new
    @aricle = Aricle.new
  end

  def create
    @aricle = Aricle.new(aricle_params)
    @aricle.public_id = current_public.id
    if @aricle.save!
    redirect_to aricles_path
    flash[:notice] = '新しい記事を作成しました。'
    else
    @aricles = Aricle.all
    render :index
    end
  end

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
    redirect_to aricle_path
    flash[:notice] = '記事を修正しました'
    else
    render :edit
    end
  end

  private

  def aricle_params
    params.require(:aricle).permit(:public_id,:game_title_id,:type_id,:title,:body)
  end

  def ensure_correct_user
    @aricle = Aricle.find(params[:id])
    unless @aricle.public == current_public
      redirect_to aricles_path
    end
  end
end
