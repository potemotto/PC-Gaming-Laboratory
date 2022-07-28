class GameTitle < ApplicationRecord
  belongs_to :cpu_list
  belongs_to :gpu_list
  belongs_to :system
  belongs_to :genre
  has_many :article
end
