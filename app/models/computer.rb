class Computer < ApplicationRecord
  belongs_to :cpu_list
  belongs_to :gpu_list
  belongs_to :system
  belongs_to :public

  enum storage_type: {"2.5インチHDD": 1,"3.5インチHDD": 2,"2.5インチSSD":3,"M.2_SSD":4,"それ以外":9,"分からない":0}
  enum pc_type: {"デスクトップPC": 0,"ノートPC": 1,"一体型":2,"その他":9,"不明":0}
end
