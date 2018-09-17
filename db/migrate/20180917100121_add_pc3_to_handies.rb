class AddPc3ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc3os, :string
    add_column :handies, :pc3mb, :string
    add_column :handies, :pc3vendor, :string
    add_column :handies, :pc3chip, :string
    add_column :handies, :pc3bios, :string
    add_column :handies, :pc3basic, :string
    add_column :handies, :pc3comp32, :string
    add_column :handies, :pc3burnin, :string
    add_column :handies, :pc3fat, :string
    add_column :handies, :pc3fat32, :string
    add_column :handies, :pc3ntfs, :string
    add_column :handies, :pc3exfat, :string
    add_column :handies, :pc3result, :string
    add_column :handies, :pc3led, :string
  end
end
