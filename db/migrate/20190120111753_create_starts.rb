class CreateStarts < ActiveRecord::Migration[5.1]
  def change
    create_table :starts do |t|
      t.string :main_post
      t.string :start
      t.integer :post_id

      t.timestamps
    end
  end
end
