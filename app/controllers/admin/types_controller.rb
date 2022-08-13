class Admin::TypesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @types = Type.all
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
    redirect_to admin_types_path
    flash[:notice] = '新しい記事タイプを登録しました。'
    else
    @types = Type.all
    render :index
    end
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])
    if @type.update(type_params)
    redirect_to admin_types_path
    flash[:notice] = 'タイプ名が変更されました。'
    else
    render :edit
    end
  end

  private

  def type_params
    params.require(:type).permit(:name)
  end

end
