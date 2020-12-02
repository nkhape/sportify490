class ReviewsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @review = Review.new(rating: params[:rating].to_i)
    @review.event = @event
    @review.user = User.find(params[:user_id].to_i)
    @review.reviewer_id = current_user.id
    authorize @review
    if @review.save
      redirect_to event_path(@event)
    else
      redirect_to event_path(@event), alert: "Something went wrong, try again please"
    end
  end
end
