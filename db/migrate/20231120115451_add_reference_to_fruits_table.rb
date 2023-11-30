class AddReferenceToFruitsTable < ActiveRecord::Migration[7.1]
  def change
    add_reference :fruits, :voters, null: false,  index: true
  end
end
