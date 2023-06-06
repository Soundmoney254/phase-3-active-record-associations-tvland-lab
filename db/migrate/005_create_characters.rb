class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :actor_id
      t.integer :show_id
    end
    
    add_index :characters, :actor_id
    add_index :characters, :show_id
  end
end
