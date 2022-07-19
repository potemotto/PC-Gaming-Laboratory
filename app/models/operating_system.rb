class OperatingSystem < ApplicationRecord
  has_many :computer
  has_many :game_title
end
