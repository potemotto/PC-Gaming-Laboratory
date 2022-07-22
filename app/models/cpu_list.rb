class CpuList < ApplicationRecord
  has_many :computer
  has_many :game_title
  
  enum maker: {"intel": 0,"AMD": 1}
end
