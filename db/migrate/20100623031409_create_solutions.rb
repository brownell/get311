class CreateSolutions < ActiveRecord::Migration
  def self.up
    create_table :solutions do |t|
      t.integer :verb_id
      t.integer :noun_id
      t.integer :extra_id
      t.string :name
      t.string :detail, :linit => 2048
      t.string :url
      t.timestamps
    end
  end
  
  def self.down
    drop_table :solutions
  end
end
