class EventsController < ApplicationController
before_action :set_event, only: [:edit, :update, :show]

  def index
    @events = Event.all
  end

  def show
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

    def edit
    end

    def update
      if @event.update(event_params)
        redirect_to events_path
      else
        render :edit
      end
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :price, :capacity, :level, :sport)
  end
end
