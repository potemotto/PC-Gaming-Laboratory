class Public::GameTitlesController < ApplicationController
  def index
    @game_titles = GameTitle.all
  end
end
