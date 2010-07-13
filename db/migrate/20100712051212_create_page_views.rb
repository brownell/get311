class CreatePageViews < ActiveRecord::Migration
  def self.up
    create_table :page_views do |t|
      t.integer :libraries
      t.integer :prt
      t.integer :sms
      t.integer :news
      t.integer :hours
      t.integer :radio
      t.integer :gameday
      t.integer :youtube
      t.integer :calendar
      t.string :day
      t.integer :emergency
      t.integer :home
      t.integer :links
      t.integer :map
      t.integer :mobile_about
      t.integer :people
      t.integer :shuttleschedule
      t.integer :webkit
      t.integer :touch
      t.integer :basic

      t.timestamps
    end
  end

  def self.down
    drop_table :page_views
  end
end
