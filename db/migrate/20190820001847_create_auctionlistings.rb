class CreateAuctionlistings < ActiveRecord::Migration[5.2]
  def change
    create_table :auctionlistings do |t|
      t.string :name

      t.timestamps
    end
  end
end
