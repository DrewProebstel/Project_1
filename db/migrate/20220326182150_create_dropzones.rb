class CreateDropzones < ActiveRecord::Migration[5.2]
  def change
    create_table :dropzones do |t|
      t.boolean :windtunnel
      t.integer :employees
      t.string :city
      t.string :name

      t.timestamps
    end
  end
end
