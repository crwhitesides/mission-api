class CreateZones < ActiveRecord::Migration[5.0]
  def change
    create_table :zones do |t|
      t.text :name
      t.references :mission

      t.timestamps
    end
  end
end
