class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @user = current_user
    @bookings = policy_scope(Booking)
  end

  # def new
  #   @booking = Booking.new
  #   @event = Event.find(params[:event_id])
  #   # authorize @booking
  # end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.status = :request_sent
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
