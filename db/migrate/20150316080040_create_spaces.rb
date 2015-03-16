class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :user_id, null: false
      t.string :name, null: false
      t.string :address, null: false
      t.text :description, null: false

      t.timestamps
    end
    add_index :spaces, :user_id
    add_index :spaces, :address, unique: true
  end
end
