class CreateUserprofiles < ActiveRecord::Migration[5.1]
  def change
    create_table :userprofiles do |t|
      t.string :phone
      t.date :birthday
      t.string :fb
      t.string :ig
      t.string :address
      t.string :addrcode
      t.integer :user_id

      t.timestamps
    end
  end
end
