class AddPc1ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc1os, :text
    add_column :handies, :pc1mb, :text
    add_column :handies, :pc1vendor, :text
    add_column :handies, :pc1chip, :text
    add_column :handies, :pc1bios, :text
    add_column :handies, :pc1basic, :text
    add_column :handies, :pc1comp32, :text
    add_column :handies, :pc1burnin, :text
    add_column :handies, :pc1fat, :text
    add_column :handies, :pc1fat32, :text
    add_column :handies, :pc1ntfs, :text
    add_column :handies, :pc1exfat, :text
    add_column :handies, :pc1result, :text
    add_column :handies, :pc1led, :text
  end
end
