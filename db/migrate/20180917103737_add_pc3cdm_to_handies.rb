class AddPc3cdmToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc3cdmread, :float
    add_column :handies, :pc3cdmwrite, :float
    add_column :handies, :pc3rdr512, :float
    add_column :handies, :pc3rdw512, :float
    add_column :handies, :pc3rdr4k, :float
    add_column :handies, :pc3rdw4k, :float
    add_column :handies, :pc3rdrqd324k, :float
    add_column :handies, :pc3rdwqd324k, :float
  end
end
