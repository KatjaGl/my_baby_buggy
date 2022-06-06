class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.date :date_debut
      t.date :date_fin
      t.integer :montant_total
      t.integer :frais_location
      t.integer :rating

      t.timestamps
    end
  end
end
