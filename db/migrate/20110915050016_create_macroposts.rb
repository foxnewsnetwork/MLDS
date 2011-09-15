class CreateMacroposts < ActiveRecord::Migration
  def self.up
    create_table :macroposts do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.string :location

      t.timestamps
    end
    add_index :macroposts , :user_id
    add_index :macroposts , :created_at
    add_index :macroposts , :location
  end

  def self.down
    drop_table :macroposts
  end
end
