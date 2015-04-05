class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :operator
      t.string :accept_sna
      t.string :accept_fmn
      t.string :destribute
      t.string :only_redee
      t.string :ebt_machin
      t.string :day_time
      t.decimal :zip_code
      t.decimal :lon
      t.decimal :lat
      t.decimal :x
      t.decimal :y

      t.timestamps null: false
    end
  end
end
