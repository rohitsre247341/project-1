class ChangeAgeCommentInVoters < ActiveRecord::Migration[7.1]
  def change
    change_column_comment :voters, :age, from: 'voter should be greater than 18 years', to: '18 above only'
  end
end
