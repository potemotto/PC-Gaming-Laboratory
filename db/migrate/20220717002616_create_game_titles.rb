class CreateGameTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :game_titles do |t|
      t.integer :genre_id
      t.integer :cpu_list_id
      t.integer :gpu_list_id
      t.integer :system_id
      t.string :name
      t.integer :recommended_memory
      t.integer :request_storage

      t.timestamps
    end
  end
end
