class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings do |t|
      t.string :name
      t.string :physical_address
      t.string :code
      t.string :parent
      t.string :hours
      t.string :website
      t.string :wifi
      t.string :phone
      t.string :type
      t.string :subtype
      t.string :campus
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end

  def self.down
    drop_table :buildings
  end
end
