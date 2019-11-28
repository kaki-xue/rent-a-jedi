class Api::V1::BookingsController < Api::V1::BaseController

before_action :set_booking, only: [:show, :update, :destroy]

  def index
    if params[:user_id].nil?
      @bookings = Booking.all
    else
     @bookings = Booking.where(user_id: params[:user_id])
    end
  end

  def show

  end

  def create
    @booking = Booking.new(booking_params)
    @alien = Alien.find(@booking.alien_id)
    if @booking.user == @alien.user
        render_unbookable
    else
      if @booking.save
        render :show, status: :created
      else
        render_error
      end
    end
  end

  def update
    if @booking.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @booking.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :alien_id)
  end

  def render_error
    render json: { errors: @booking.errors.full_messages },
      status: :unprocessable_entity
  end

  def render_unbookable
    render json: { errors: 'You own that alien ! You stupid :D' }
  end

end
