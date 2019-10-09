class AddAuctionnoticeReferencesToRealty < ActiveRecord::Migration[5.2]
  def change
    add_reference :realties, :auctionnotice, foreign_key: true
  end
end
