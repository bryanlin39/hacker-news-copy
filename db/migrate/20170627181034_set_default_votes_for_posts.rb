class SetDefaultVotesForPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column(:posts, :votes, :integer)
    add_column(:posts, :votes, :integer, default: 0)
  end
end
