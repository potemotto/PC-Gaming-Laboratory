class CreateGpuLists < ActiveRecord::Migration[6.1]
  def change
    create_table :gpu_lists do |t|
      t.integer :maker
      t.string :name
      t.integer :score
      t.integer :video_memory
      t.integer :DirectX
      t.integer :year_of_release

      t.timestamps
    end
  end
end
