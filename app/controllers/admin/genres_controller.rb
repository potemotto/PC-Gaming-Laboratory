class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!
  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
    redirect_to admin_genres_path
    flash[:notice] = '新しいジャンルを登録しました。'
    else
    @genres = Genre.all
    render :index
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
    redirect_to admin_genres_path
    flash[:notice] = 'ジャンル名が変更されました。'
    else
    render :edit
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
