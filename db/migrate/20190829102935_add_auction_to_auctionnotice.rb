class AddAuctionToAuctionnotice < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionnotices, :auction, :text
  end
end
