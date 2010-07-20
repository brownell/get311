class CreateNouns < ActiveRecord::Migration
  def self.up
    create_table :nouns do |t|
      t.integer :verb_id
      t.string :phrase
      t.string :detail
      t.timestamps
    end
  end
  
  def self.down
    drop_table :nouns
  end
end
