class CreateMissionaries < ActiveRecord::Migration[5.0]
  def change
    create_table :missionaries do |t|
      t.text :first_name
      t.text :last_name
      t.datetime :birth_date
      t.text :nationality
      t.datetime :start_date
      t.text :leadership_assignment, default: "Junior companion"
      t.references :companionship, foreign_key: true

      t.timestamps
    end
  end
end
