class AddVoterInVoters < ActiveRecord::Migration[7.1]
  def change
    reversible do  |direction|
      direction.up do 
        Voter.create(name: 'sk',age: 19)
      end

      direction.down do
        Voter.find_by_name('sk').destroy
      end
    end
  end
end
