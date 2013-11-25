class AddMachineToJuicers < ActiveRecord::Migration
  def change
    add_column :juicers, :machine, :string
  end
end
