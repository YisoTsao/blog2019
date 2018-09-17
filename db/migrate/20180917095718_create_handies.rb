class CreateHandies < ActiveRecord::Migration[5.1]
  def change
    create_table :handies do |t|
      t.integer :item
      t.integer :pccitem
      t.date :receivedate
      t.date :startdate
      t.date :finishdate
      t.string :solution
      t.text :schedule
      t.string :capacity
      t.string :qual
      t.float :read
      t.float :write
      t.string :owner
      t.string :prodname
      t.text :desc
      t.string :prodpn
      t.text :fwvversion
      t.string :ftype
      t.string :pcbvers
      t.string :testres
      t.string :expl
      t.string :rpname
      t.date :rpdate
      t.text :approvename
      t.text :explain
      t.text :remark

      t.timestamps
    end
  end
end
