class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :faved_id
      t.integer :faver_id

      t.timestamps
    end
    add_index :favorites, :faver_id
    add_index :favorites, :faved_id
    add_index :favorites, [:faver_id, :faved_id], unique:true
  end
end
