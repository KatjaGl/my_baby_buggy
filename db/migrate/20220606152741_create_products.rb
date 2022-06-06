class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.integer :number_of_place
      t.integer :weight
      t.integer :age_of_product
      t.text :details
      t.integer :child_weight
      t.string :marque
      t.string :color
      t.integer :prix_par_jour
      t.integer :rating

      t.timestamps
    end
  end
end
