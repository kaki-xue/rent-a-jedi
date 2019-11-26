class Api::V1::AliensController < Api::V1::BaseController

before_action :set_alien, only: [:show, :destroy]

  def index
   @aliens = Alien.all
  end

  def show

  end

  def create
    @alien = Alien.new(alien_params)
    if @alien.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @alien.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_alien
    @alien = Alien.find(params[:id])
  end

  def alien_params
    params.require(:alien).permit(:name, :image, :skill, :price_per_day, :description)
  end

  def render_error
    render json: { errors: @alien.errors.full_messages },
      status: :unprocessable_entity
  end

end
