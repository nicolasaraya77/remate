class AuctionsController < ApplicationController
  load_and_authorize_resource

  def index
    @auctions = Auction.all
  end

  def new
    @auction = Auction.new
    @auctionnotice = Auctionnotice.find(params[:auctionnotice_id])

  end

  def create
    @auction = Auction.new(auction_params)
    @auction.save
    redirect_to auctions_path
  end

  def show
  end

  def edit
  end

  def update
    @auction.update(auction_params)
    redirect_to auctions_path
  end

  def destroy
    @auction.destroy
    redirect_to auctions_path
  end

  def auctions
      auction = Auctionnotice.find(params[:id])
  end

  private

  def auction_params
    params.require(:auction).permit(:name, :date, :hour, :fee, :warranty, :minimum, :total_minimum, :cost, :uf, :pesos, :court_id, :lyrics, :number, :year, :realty_id, :auctionnotice_id )
  end











end
