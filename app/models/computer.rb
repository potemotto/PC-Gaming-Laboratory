class Computer < ApplicationRecord
  belongs_to :cpu_list
  belongs_to :gpu_list
  belongs_to :system
  belongs_to :public
  
  enum maker: {"デスクトップPC": 0,"ノートPC": 1,"一体型":2  }
end
