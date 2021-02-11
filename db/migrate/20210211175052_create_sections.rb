class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.string :name
      t.references :cellar, null: false, foreign_key: true
      t.integer :rows
      t.integer :columns

      t.timestamps
    end
  end
end
