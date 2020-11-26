class EventsController < ApplicationController
  
before_action :set_event, only: [:edit, :update, :show, :update]

  def index
    @events = policy_scope(Event)
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    @events = policy_scope(Event)
    @markers = [
      {
        lat: @event.latitude,
        lng: @event.longitude
      }
    ]
  end

  def show
    @booking = Booking.new
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to events_path
    else
      render :new
    end
    authorize @event
  end
    
  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to events_path(@event)
    else
      render :edit
    end
  end
  
  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :price, :capacity, :level, :sport)
  end

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end
end
