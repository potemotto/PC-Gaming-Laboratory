class Public::PowersController < ApplicationController
  def index
    @computers = Computer.where(public_id:current_public.id)
  end
end
