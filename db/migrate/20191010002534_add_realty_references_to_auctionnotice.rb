class AddRealtyReferencesToAuctionnotice < ActiveRecord::Migration[5.2]
  def change
    add_reference :auctionnotices, :realty, foreign_key: true
  end
end
