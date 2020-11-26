class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    # need to add  'authorize @listing' when we have pundit
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to events_path
    else
      render :new
    end
    # need to add  'authorize @listing' when we have pundit

    def update
      if @event.update(event_params)
        redirect_to event_path(@event)
      else
        render :edit
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :price, :capacity, :level, :sport)
  end
end
