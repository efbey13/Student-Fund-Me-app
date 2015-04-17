class UsersController < ApplicationController
  def edit
  end

  def delete
  end

  def create
  end

  def update
  end

  def show
    @user  = User.find(params[:id])
  end
end
