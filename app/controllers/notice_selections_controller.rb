# class NoticeSelectionsController < ApplicationController
#
#   load_and_authorize_resource
#
#   def index
#     @notice_selections = NoticeSelection.all
#   end

#   def new
#
#     @auctionnotice = Auctionnotice.find(params[:auctionnotice_id])
#     @notice_selection = NoticeSelection.new
#   end
#
#   def create
#     @auctionnotice = Auctionnotice.find(params[:id])
#
#     @notice_selection.save
#     redirect_to notice_selections_path
#   end
#
#   def show
#   end
#
#   def edit
#   end
#
#   def update
#     @notice_selection.update(notice_selection_params)
#     redirect_to notice_selections_path
#   end
#
#   def destroy
#     @notice_selection.destroy
#     redirect_to notice_selections_path
#   end
#
#   private
#
#   def notice_selection_params
#     params.require(:notice_selection).permit(:date, :hour, :warranty, :fee, :name)
#   end
#
# end
