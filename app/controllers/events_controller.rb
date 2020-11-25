class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    # need to add  'authorize @listing' when we have pundit
  end

  def create
    @event = Event.new(params[event_params])
    @event.user = current_user
    if @event.save
      redirect_to events_path
    else
      render :new
    end
    # need to add  'authorize @listing' when we have pundit
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :price, :capacity, :level, :sport)
  end
end
