class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @thisuser = User.find(params[:id])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_session_path
    else 
      flash[:danger] = "Nope"
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      flash[:danger] = "error"
      redirect_to new_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path
  end


private 
def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation, :profilepic)
  end
end