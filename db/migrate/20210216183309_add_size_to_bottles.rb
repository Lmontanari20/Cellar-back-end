class AddSizeToBottles < ActiveRecord::Migration[6.1]
  def change
    add_column :bottles, :size, :string
  end
end
