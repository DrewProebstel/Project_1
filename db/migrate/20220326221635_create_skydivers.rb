class CreateSkydivers < ActiveRecord::Migration[5.2]
  def change
    create_table :skydivers do |t|
      t.boolean :wingsuit
      t.integer :jumps
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
