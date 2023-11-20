class CreateVoters < ActiveRecord::Migration[7.1]
  def change
    create_table :voters, options: "comment = 'this is voter comment'" do |t|
      t.string :name
      t.integer :age, comment: 'voter should be greater than 18 years'
      t.index :age, name: 'vote'
      t.timestamps
    end
    add_check_constraint :voters, "age > 18", name: 'age_check'
  end
end
