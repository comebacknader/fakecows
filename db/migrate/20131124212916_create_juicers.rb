class CreateJuicers < ActiveRecord::Migration
  def change
    create_table :juicers do |t|
      t.string :brand
      t.string :title
      t.string :price
      t.string :link
      t.text :description
      t.string :store
      t.string :slug

      t.timestamps
    end
  end
end
