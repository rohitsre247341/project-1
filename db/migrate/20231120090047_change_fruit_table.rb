class ChangeFruitTable < ActiveRecord::Migration[7.1]
  def up
    change_table :fruits do |t|
      t.remove :color
      t.string :quantity
      t.rename :name, :fruit_name
    end
  end

  def down
    change_table :fruits do |t|
      t.rename :fruit_name, :name
      t.remove :quantity
      t.string :color
    end
  end
end
