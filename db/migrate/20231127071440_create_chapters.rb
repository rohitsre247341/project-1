class CreateChapters < ActiveRecord::Migration[7.1]
  def change
    create_table :chapters do |t|
      t.string :name
      t.references :book

      t.timestamps
    end
  end
end
