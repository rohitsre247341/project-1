class CreateCapitalCities < ActiveRecord::Migration[7.1]
  def change
    create_table :capital_cities do |t|
      t.string :name

      t.timestamps
    end
  end
end
