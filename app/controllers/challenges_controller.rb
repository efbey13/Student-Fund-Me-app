class ChallengesController < ApplicationController
  def edit
    @student_challenge = StudentChallenge.find(params[:id])
  end

  def delete
  end

  def new
    # @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.find_by(:name => params[:name])
    current_user.sponsored_students.each do |row|
      StudentChallenge.create(:challenge_id => @challenge.id,:student_id=>row.student_id, :sponsor_id=> current_user.id)
    end
    redirect_to user_path(current_user)
  end

  def update
    @student_challenge = StudentChallenge.find(params[:id])
    @student_challenge.update(:accepted => params[:student_challenge][:accepted])
    redirect_to user_path(current_user)
  end

  def index
    @student_challenges = StudentChallenge.all
  end

  def show
    @student_challenge = StudentChallenge.find(params[:id])
  end














end
