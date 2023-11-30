class AddColumnActiveToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column :authors, :active, :boolean
  end
end
