class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.datetime :publish_year
      t.references :writer, foreign_key: {to_table: :authors}

      t.timestamps
    end
  end
end
