class AddPc5ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc5os, :string
    add_column :handies, :pc5mb, :string
    add_column :handies, :pc5vendor, :string
    add_column :handies, :pc5chip, :string
    add_column :handies, :pc5bios, :string
    add_column :handies, :pc5basic, :string
    add_column :handies, :pc5result, :string
    add_column :handies, :pc5led, :string
  end
end
