class UsersController < ApplicationController
  before_action :authenticate_user!, :check_user #-> routes to the login / signup if not authenticated

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update  
    @user = User.find(params[:id])
    edited_user = params[:user]
  end
  
  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def check_user
    if current_user != User.find(params[:id])
      flash[:warning] = "Accès refusé"
      redirect_to root_path
    end
  end

end
