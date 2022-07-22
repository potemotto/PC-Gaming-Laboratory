class GpuList < ApplicationRecord
  has_many :computer
  has_many :game_title
  
  enum maker: {"NVIDIA": 0,"AMD": 1}
end
