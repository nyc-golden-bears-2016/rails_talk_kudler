class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)
  if @user.save
    redirect_to users_path
  else
    render :new, notice: "didn't work chief"
  end
end


  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :password)
  end


end
