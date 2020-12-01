class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = policy_scope(@user.bookings)
    @my_events = policy_scope(@user.events)
    @events = policy_scope(@user.joint_events)
    @all_events = (@events + @my_events).sort_by &:date
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
    @booking.status = 1
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
    authorize @booking
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.approved!
    authorize @booking
    @booking.save
    redirect_to bookings_path, notice: "Your booking was accepted"
  end

  def cancel
    @booking = Booking.find(params[:booking_id])
    @booking.cancelled!
    authorize @booking
    @booking.save
    redirect_to bookings_path, notice: "Your booking was cancelled"
  end

  # def edit
  # end

  # def update
  #   @update_status = @booking.status.update!(booking_params)
  # end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
