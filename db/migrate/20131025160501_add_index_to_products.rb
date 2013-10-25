class AddIndexToProducts < ActiveRecord::Migration
  def change
  	add_index :products, :slug
  end
end
