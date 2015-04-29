class SearchesController < ApplicationController

  def new
    @search = Search.new
    @school_name = User.uniq.pluck(:school_name)
    @major = User.uniq.pluck(:major)
    @gender = ["Male", "Female", "Other"]
    @location = User.uniq.pluck(:location)
    @race = ["Caucasian", "African American", "Asian", "Indian", "Hispanic"]

  end

  def create

    @search = Search.create(search_params)
    redirect_to @search
  end

  def show

    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:profile_photo, :first_name, :last_name, :email, :school_name, :major, :gender, :race, :location, :gpa, :total_received, :total_given, :bio, :discoverable)
  end

end
