class CreateCompanionships < ActiveRecord::Migration[5.0]
  def change
    create_table :companionships do |t|
      t.references :area
      t.references :missionary

      t.timestamps
    end
  end
end
