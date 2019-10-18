class AddStatusToAuction < ActiveRecord::Migration[5.2]
  def change
    add_column :auctions, :status, :integer
  end
end
