class CreateMissionaries < ActiveRecord::Migration[5.0]
  def change
    create_table :missionaries do |t|
      t.text :first_name
      t.text :last_name
      t.datetime :dob
      t.text :nationality
      t.datetime :date_began_mission
      t.text :leadership_assignment

      t.timestamps
    end
  end
end
