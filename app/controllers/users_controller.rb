class UsersController < ApplicationController
  
  before_action :set_user, only: [:edit, :update]

  def show
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
    if @user.update(user_params)
      flash[:notice] = 'プロフィールを更新しました'
      redirect_to edit_user_path(@user.id)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :postal_code, :address)
  end
end
