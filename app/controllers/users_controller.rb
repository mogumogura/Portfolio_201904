class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to user_path(@user.id)
    else
    render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :postal_code, :address)
  end
end
