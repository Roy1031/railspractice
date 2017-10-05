class AddFavsCountToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :favs_count, :integer
  end
end
