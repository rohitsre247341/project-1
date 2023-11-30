require_relative "20231120081348_add_voter_in_voters"
class RevertAddVoters < ActiveRecord::Migration[7.1]
  def change
    suppress_messages do
      revert(AddVoterInVoters)
    end
    say_with_time("adding voters") do
      say("adding first voter")
      Voter.create(name: 'sharma', age: 21)
      sleep 5
      say("adding second voter")
      Voter.create(name: 'rohit', age: 21)
      Voter.count
    end
  end
end
