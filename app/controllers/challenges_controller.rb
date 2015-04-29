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
    # binding.pry
    @challenge = Challenge.find_by(:name => params[:name])
    if params[:user][:name].empty?
      current_user.sponsored_students.each do |row|
        StudentChallenge.create(:challenge_id => @challenge.id,:student_id=>row.student_id, :sponsor_id=> current_user.id)
      end
      flash[:notice] = "Challenge successfully created"
    else
      StudentChallenge.create(:challenge_id => @challenge.id,:student_id=>User.find_by(:first_name => params[:user][:name]).id, :sponsor_id=> current_user.id)
      UserMailer.challenged_email(current_user, User.find(row.student_id)).deliver_now
      flash[:notice] = "Challenge successfully created"
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
