class CreateCpuLists < ActiveRecord::Migration[6.1]
  def change
    create_table :cpu_lists do |t|
      t.integer :maker
      t.string :name
      t.integer :single_score
      t.integer :multiscore
      t.integer :clock
      t.integer :number_of_cores
      t.integer :number_of_threads
      t.integer :year_of_release

      t.timestamps
    end
  end
end
