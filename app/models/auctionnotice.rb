class Auctionnotice < ApplicationRecord

  enum status: [:pending, :selected, :rejected]

  def self.created_by_day
    group_by_day(:created_at).count
  end


end
