class Public::GpuListsController < ApplicationController
  def index
    @gpu_lists = GpuList.all
  end
end
