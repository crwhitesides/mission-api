class DropMissionaries < ActiveRecord::Migration[5.0]
  def change
    drop_table :missionaries
  end
end
