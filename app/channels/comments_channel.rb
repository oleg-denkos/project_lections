class CommentsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stop_all_streams
    post = Post.find(params[:id])
    stream_for post
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
