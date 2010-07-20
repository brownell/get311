class CreateExtras < ActiveRecord::Migration
  def self.up
    create_table :extras do |t|
      t.integer :verb_id
      t.integer :noun_id
      t.string :phrase
      t.string :detail
      t.timestamps
    end
  end
  
  def self.down
    drop_table :extras
  end
end
