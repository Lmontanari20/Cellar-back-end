class CreateBottles < ActiveRecord::Migration[6.1]
  def change
    create_table :bottles do |t|
      t.float :price
      t.references :wine
      t.integer :row
      t.integer :column
      t.references :section

      t.timestamps
    end
  end
end
