class AddColumnPolimorphicToVoters < ActiveRecord::Migration[7.1]
  def change
    add_reference :voters, :dob, polymorphic: true, null: false
  end
end
