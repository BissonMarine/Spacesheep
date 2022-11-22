class CreateSpaceships < ActiveRecord::Migration[7.0]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :weapons
      t.string :energy
      t.integer :seats
      t.string :address
      t.boolean :gravity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
