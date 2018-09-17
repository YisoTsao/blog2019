class AddPc2cdmToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc2cdmread, :float
    add_column :handies, :pc2cdmwrite, :float
    add_column :handies, :pc2rdr512, :float
    add_column :handies, :pc2rdw512, :float
    add_column :handies, :pc2rdr4k, :float
    add_column :handies, :pc2rdw4k, :float
    add_column :handies, :pc2rdrqd324k, :float
    add_column :handies, :pc2rdwqd324k, :float
  end
end
