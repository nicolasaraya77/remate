class AddAttachedToAuctionlisting < ActiveRecord::Migration[5.2]
  def change
    add_column :auctionlistings, :attached, :string
  end
end
