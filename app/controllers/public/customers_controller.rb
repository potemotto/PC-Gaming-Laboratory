class Public::CustomersController < ApplicationController
  def show
    @public = current_public
  end

  def edit
    @public = current_public
  end

  def update
  end
end
