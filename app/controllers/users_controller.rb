class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, :except => :show

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless current_user.admin?
      unless @user == current_user
        redirect_to root_path, :alert => "Access denied."
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  def accept
    user = User.find(params[:id])
    user.update!(accepted: true)
    redirect_to new_applications_path, :notice => "Application accepted."
  end

  def deny
    user = User.find(params[:id])
    user.update!(accepted: false)
    redirect_to new_applications_path, :notice => "Application accepted."
  end

  def undo
    user = User.find(params[:id])
    user.update!(accepted: nil)
    redirect_to new_applications_path, :notice => "Application decision undone."
  end

  private

  def current_user_only
    params[:id].to_i == current_user.id
  end

  def admin_only
    unless current_user.admin? || current_user_only
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def secure_params
    params.require(:user).permit(:role)
  end

end
