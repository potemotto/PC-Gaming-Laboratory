class Admin::GameTitlesController < ApplicationController
  before_action :authenticate_admin!
  def new
    @game_title = GameTitle.new
  end

  def create
    @game_title = GameTitle.new(game_title_params)
    if @game_title.save!
    redirect_to admin_game_titles_path
    flash[:notice] = '新しいゲームタイトルを登録しました。'
    else
    @game_titles = GameTitle.all
    render :index
    end
  end

  def index
    @game_titles = GameTitle.all
  end

  def show
    @game_title = GameTitle.find(params[:id])
  end

  def edit
    @game_title = GameTitle.find(params[:id])
  end

  def update
    @game_title = GameTitle.find(params[:id])
    if @game_title.update(game_title_params)
    redirect_to admin_game_titles_path
    flash[:notice] = 'CPUデータを修正しました。'
    else
    render :edit
    end
  end

  private

  def game_title_params
    params.require(:game_title).permit(:name,:genre_id,:cpu_list_id,:gpu_list_id,:system_id,:recommended_memory,:request_storage)
  end

end
