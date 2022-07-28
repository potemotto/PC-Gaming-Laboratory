class Aricle < ApplicationRecord
  belongs_to :game_title
  belongs_to :type
  belongs_to :public
end
