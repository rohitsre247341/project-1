class CreateFruits < ActiveRecord::Migration[7.1]
  def change
    say("Creating fruits table")
    suppress_messages do
      create_table :fruits do |t|
        t.string :name
        t.string :color
        t.integer :serial_no
        t.timestamps
      end
    end
  end
end
