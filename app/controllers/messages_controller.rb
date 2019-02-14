class MessagesController < ApplicationController
  
  # GET /messages
  # GET /messages.json
  def index
    if params[:hashtag_id].blank?
      @messages = Message.all
    else
      @messages = Message.filter_by_hashtag(params[:hashtag_id])
    end
  end
end
