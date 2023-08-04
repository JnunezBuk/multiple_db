class UsersController < ApplicationController
  before_action :set_user, only: %i[show]

  def index
    render json: User.all, each_serializer: Users::IndexSerializer
  end

  def show
    render json: @user, serializer: Users::ShowSerializer
  end

  def create
    user = User.create(create_params)
    render json: user, serializer: Users::ShowSerializer
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def create_params
    params.require(:user).permit(:name, :email)
  end
end
