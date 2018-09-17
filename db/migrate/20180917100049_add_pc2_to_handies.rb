class AddPc2ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc2os, :string
    add_column :handies, :pc2mb, :string
    add_column :handies, :pc2vendor, :string
    add_column :handies, :pc2chip, :string
    add_column :handies, :pc2bios, :string
    add_column :handies, :pc2basic, :string
    add_column :handies, :pc2comp32, :string
    add_column :handies, :pc2burnin, :string
    add_column :handies, :pc2fat, :string
    add_column :handies, :pc2fat32, :string
    add_column :handies, :pc2ntfs, :string
    add_column :handies, :pc2exfat, :string
    add_column :handies, :pc2result, :string
    add_column :handies, :pc2led, :string
  end
end
