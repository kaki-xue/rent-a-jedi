class Api::V1::UsersController < Api::V1::BaseController

before_action :set_user, only: [:show, :destroy]

  def index
   @users = User.all


  end

  def show

  end

  def create
    @user = user.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @user.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:open_id)
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end

end
