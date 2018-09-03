class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account, :string
    add_column :users, :name, :string
    add_column :users, :click_id, :integer
    add_column :users, :phone, :integer
    add_column :users, :agree_terms, :boolean
    add_column :users, :id_number, :integer
    add_column :users, :birth_day, :integer
    add_column :users, :country_code, :integer
    add_column :users, :qq, :string
    add_column :users, :webchat, :string
  end
end
