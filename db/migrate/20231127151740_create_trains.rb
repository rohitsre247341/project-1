class CreateTrains < ActiveRecord::Migration[7.1]
  def change
    create_table :trains, primary_key: [:name, :train_no] do |t|
      t.string :name
      t.integer :train_no

      t.timestamps
    end
  end
end
