class CreateAuctionnotices < ActiveRecord::Migration[5.2]
  def change
    create_table :auctionnotices do |t|

      t.timestamps
    end
  end
end
