class AddTypeToJuicers < ActiveRecord::Migration
  def change
    add_column :juicers, :type, :string
  end
end
