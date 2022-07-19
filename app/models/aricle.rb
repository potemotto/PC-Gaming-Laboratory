class Aricle < ApplicationRecord
  belongs_to :genre
  belongs_to :type
  belongs_to :public
end
