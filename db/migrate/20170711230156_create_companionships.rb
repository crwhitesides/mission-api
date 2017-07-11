class CreateCompanionships < ActiveRecord::Migration[5.0]
  def change
    create_table :companionships do |t|
      t.references :mission, foreign_key: true
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
