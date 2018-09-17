class AddPc4ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc4os, :string
    add_column :handies, :pc4mb, :string
    add_column :handies, :pc4vendor, :string
    add_column :handies, :pc4chip, :string
    add_column :handies, :pc4bios, :string
    add_column :handies, :pc4basic, :string
    add_column :handies, :pc4ext34, :string
    add_column :handies, :pc4result, :string
    add_column :handies, :pc4led, :string
  end
end
