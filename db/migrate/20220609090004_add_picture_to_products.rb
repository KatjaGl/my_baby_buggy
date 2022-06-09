class AddPictureToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :product_photo, :string
  end
end
