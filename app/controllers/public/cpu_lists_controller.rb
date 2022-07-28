class Public::CpuListsController < ApplicationController
  def index
    @cpu_lists = CpuList.all
  end
end
