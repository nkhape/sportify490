class EventsController < ApplicationController

before_action :set_event, only: [:edit, :update, :show, :destroy]

  def index
    if params[:search].present?
      @events = policy_scope(Event).location_search(params[:search][:location])
  else
      @events = policy_scope(Event)
  end
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    @marker = {
        lat: @event.latitude,
        lng: @event.longitude
      }

    @booking = Booking.new
    @post = Post.new
    # @my_events_booked = Booking.where(event_id: params[:id])
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
      redirect_to event_path(@event)
    else
      render :edit
    end
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
    authorize @event
  end
end
