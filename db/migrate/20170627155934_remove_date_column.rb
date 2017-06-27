class RemoveDateColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column(:posts, :date, :datetime)
  end
end
