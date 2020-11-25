class EventsController < ApplicationController
  before_action :set_event, only: [ :show, :destroy ]
  def index
    @events = Event.all
  end

  def show
  end

  def destroy
    @event = Event.destroy
    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
