class Public::GameTitlesController < ApplicationController
  before_action :authenticate_public!
  def index
    @game_titles = GameTitle.all
  end

  def show
    @game_title = GameTitle.find(params[:id])
    @computers = Computer.where(public_id:current_public.id)
  end
end
