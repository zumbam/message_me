class ChatroomController < ApplicationController
  def index
    @messages = Message.all.sort_by(&:created_at)
  end
end
