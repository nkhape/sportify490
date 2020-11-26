class EventsController < ApplicationController
  before_action :set_event, only: [ :show, :destroy ]
  def index
    @events = Event.all

     @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
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
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :price, :capacity, :level, :sport)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
