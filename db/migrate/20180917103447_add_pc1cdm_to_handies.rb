class AddPc1cdmToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :cdmread, :float
    add_column :handies, :cdmwrite, :float
    add_column :handies, :rdr512, :float
    add_column :handies, :rdw512, :float
    add_column :handies, :rdr4k, :float
    add_column :handies, :rdw4k, :float
    add_column :handies, :rdrqd324k, :float
    add_column :handies, :rdwqd324k, :float
  end
end
