class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :pickup
      t.integer :fare
      t.string :car
      t.string :payment_method
      t.references :driver, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
