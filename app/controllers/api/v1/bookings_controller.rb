class Api::V1::BookingsController < Api::V1::BaseController

before_action :set_booking, only: [:show, :update, :destroy]

  def index
   @bookings = Booking.all
  end

  def show

  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      render :show, status: :created
    else
      render_error
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
    params.require(:booking).permit(:name, :image, :skill, :price_per_day, :description)
  end

  def render_error
    render json: { errors: @booking.errors.full_messages },
      status: :unprocessable_entity
  end

end