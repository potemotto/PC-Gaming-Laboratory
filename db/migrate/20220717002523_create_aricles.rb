class CreateAricles < ActiveRecord::Migration[6.1]
  def change
    create_table :aricles do |t|
      t.integer :game_title_id
      t.integer :type_id
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
