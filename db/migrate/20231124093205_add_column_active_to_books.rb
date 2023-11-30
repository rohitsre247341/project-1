class AddColumnActiveToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :active, :boolean
  end
end
