class ChallengesController < ApplicationController
  def edit
    # binding.pry
    @the_challenge = StudentChallenge.find_by(:id=> params[:id])
    @the_challenge.update(:accepted => params[:student_challenge][:accepted])
  end

  def delete
  end

  def new
  end

  def create_challenge
    # binding.pry
    @challenge = Challenge.find_by(:name => params[:name])
    current_user.sponsored_students.each do |row|
      StudentChallenge.create(:challenge_id => @challenge.id,:student_id=>row.student_id, :sponsor_id=> current_user.id)
    end
  end

  def update
  end

  def index

  end

  def show
    @student_challenge = StudentChallenge.find_by(:id => params[:id])
  end


end
