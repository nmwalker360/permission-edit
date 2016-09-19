class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.string :name
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.integer :number
      t.integer :shipment_amount
      t.decimal :weight
      t.string :location_type
      t.string :package_location
      t.text :instructions
      t.date :pickup_date
      t.time :pickup_time

      t.timestamps null: false
    end
  end
end
