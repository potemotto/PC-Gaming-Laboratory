class Genre < ApplicationRecord
  has_many :article
  has_many :game_title
end
