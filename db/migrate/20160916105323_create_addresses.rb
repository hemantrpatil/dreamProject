class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :mobileno
      t.string :landlineno
      t.string :emailid
      t.string :website

      t.timestamps null: false
    end
  end
end
