class Auctionnotice < ApplicationRecord

  enum status: [:pending, :selected, :rejected]

end
