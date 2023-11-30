class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.string :name
      t.references :employee 
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
