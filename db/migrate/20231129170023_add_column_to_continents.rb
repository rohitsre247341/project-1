class AddColumnToContinents < ActiveRecord::Migration[7.1]
  def change
    add_column :continents, :employee_id, :integer
  end
end
