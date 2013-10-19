class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.string :title
      t.string :price
      t.text :description
      t.string :link
      t.boolean :frontpage
      t.string :store
      t.boolean :expired

      t.timestamps
    end
  end
end
