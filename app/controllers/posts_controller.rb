class PostsController < ApplicationController

def create
    @event = Event.find(params[:event_id])
    @post = Post.new(post_params)
    @post.event = @event
    @post.user = current_user
    authorize @post
    if @post.save
      redirect_to event_path(@event, anchor: "post-#{@post.id}")
    else
      render "events/show"
    end
  end

  def delete
    @event = Event.find(params[:event_id])
    @event.destroy
    redirect_to events_path(@event)
  end

private

  def post_params
    params.require(:post).permit(:content)
  end

end
