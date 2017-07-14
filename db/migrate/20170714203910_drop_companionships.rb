class DropCompanionships < ActiveRecord::Migration[5.0]
  def change
    drop_table :companionships
  end
end
