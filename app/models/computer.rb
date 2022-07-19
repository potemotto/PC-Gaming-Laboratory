class Computer < ApplicationRecord
  belongs_to :cpu_list
  belongs_to :gpu_list
  belongs_to :operating_system
  belongs_to :public
end
