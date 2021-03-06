class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.decimal :pick_lat, precision: 15, scale: 7
      t.decimal :pick_lng, precision: 15, scale: 7
      t.datetime :pick_time
      t.time :pick_range
      t.decimal :drop_lat, precision: 15, scale: 7
      t.decimal :drop_lng, precision: 15, scale: 7
      t.datetime :drop_time
      t.time :drop_range

      t.timestamps null: false
    end
  end
end
