class UsersController < ApplicationController
  def new
    @user = User.new   #给前端提供变量支持
  end
  def create
    @user=User.new(users_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
  def users_params
    params.require(:user).permit(:userName,:email)
  end
  def show
  @user = User.find(params[:id])

  end
end
