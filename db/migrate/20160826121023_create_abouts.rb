class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :aboutinfo
      t.string :shopname

      t.timestamps null: false
    end
  end
end
