class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.text :name
      t.references :district

      t.timestamps
    end
  end
end
