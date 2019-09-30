class AddStatusToAuctionnotice < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionnotices, :status, :integer, default: 0
  end
end
