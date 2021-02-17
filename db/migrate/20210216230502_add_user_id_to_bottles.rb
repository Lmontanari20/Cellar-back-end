class AddUserIdToBottles < ActiveRecord::Migration[6.1]
  def change
    add_column :bottles, :user_id, :integer
  end
end
