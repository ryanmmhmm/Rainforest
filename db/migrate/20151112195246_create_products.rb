class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :descrption
      t.integer :price_in_cents

      t.timestamps null: false
    end
  end
end
