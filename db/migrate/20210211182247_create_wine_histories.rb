class CreateWineHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :type
      t.string :winery
      t.integer :year

      t.timestamps
    end
  end
end
