class Public::CustomersController < ApplicationController
  before_action :authenticate_public!
  def show
    @public = current_public
  end

  def edit
    @public = current_public
  end

  def update
  end
end
