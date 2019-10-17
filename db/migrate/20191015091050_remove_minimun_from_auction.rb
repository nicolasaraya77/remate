class RemoveMinimunFromAuction < ActiveRecord::Migration[5.2]
  def change
    remove_column :auctions, :minimun
    add_column :auctions, :minimum, :integer
  end
end
