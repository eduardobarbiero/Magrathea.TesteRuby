class MessagesController < ApplicationController
  
  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end
end
