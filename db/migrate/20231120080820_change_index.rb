class ChangeIndex < ActiveRecord::Migration[7.1]
  def change
    rename_index :voters, 'vote', 'new vote' 
  end
end
