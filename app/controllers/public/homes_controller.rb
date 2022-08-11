class Public::HomesController < ApplicationController
  def top
    @Aricles = Aricle.all.order(updated_at: :desc)
  end

  def about
  end

  def explanation
  end
end
