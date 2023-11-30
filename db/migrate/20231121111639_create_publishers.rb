class CreatePublishers < ActiveRecord::Migration[7.1]
  def change
    create_table :publishers do |t|
      t.string :name
      t.references :book, foreign_key: true
      t.references :store, foreign_key: true
      t.timestamps
    end
  end
end
