class AddCityToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :city, :string
  end
end
