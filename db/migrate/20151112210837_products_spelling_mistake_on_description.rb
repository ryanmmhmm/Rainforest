class ProductsSpellingMistakeOnDescription < ActiveRecord::Migration
  def change
    rename_column :products, :descrption, :description
  end
end
