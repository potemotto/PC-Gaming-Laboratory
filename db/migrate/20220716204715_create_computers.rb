class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      
      t.integer :system_id
      t.integer :cpu_list_id
      t.integer :gpu_list_id
      t.string :name         
      t.integer :number_of_memories
      t.integer :memory_capacity
      t.integer :DirectX
      t.integer :free_storage
      t.integer :storage_type
      t.integer :pc_type

      t.timestamps
    end
  end
end
