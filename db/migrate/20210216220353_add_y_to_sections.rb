class AddYToSections < ActiveRecord::Migration[6.1]
  def change
    add_column :sections, :y, :integer
  end
end
