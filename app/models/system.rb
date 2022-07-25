class System < ApplicationRecord
  has_many :computer
  has_many :game_title

  enum maker: {"64bit": 0,"32bit": 1}
end
