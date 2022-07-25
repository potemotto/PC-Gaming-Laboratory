class CreateSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :bit_type
      t.integer :DirectX
      t.integer :year_of_release
      t.integer :upper_memory_limit

      t.timestamps
    end
  end
end
