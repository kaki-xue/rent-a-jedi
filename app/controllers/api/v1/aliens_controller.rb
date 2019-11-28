class Api::V1::AliensController < Api::V1::BaseController


  def index
    if params[:user_id].nil?
      @aliens = Alien.all
    else
      @aliens = Alien.where(user_id: params[:user_id])
    end
  end

  def show
    @alien = Alien.find(params[:id])
  end

  def create
    @alien = Alien.new(alien_params)
    @user = User.find(params[:user_id])
    @alien.user_id = @user.id
    if @alien.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @alien = Alien.find(params[:id])
    @alien.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :image, :skill, :price_per_day, :description)
  end

  def render_error
    render json: { errors: @alien.errors.full_messages },
      status: :unprocessable_entity
  end
end
