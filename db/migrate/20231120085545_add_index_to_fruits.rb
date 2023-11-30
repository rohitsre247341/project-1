class AddIndexToFruits < ActiveRecord::Migration[7.1]
  def change
    add_index :fruits, :serial_no
  end
end
