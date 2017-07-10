class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.text :name

      t.timestamps
    end
  end
end
