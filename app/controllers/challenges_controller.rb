class ChallengesController < ApplicationController
  def edit

  end

  def delete
  end

  def new

  end

  def update
  end

  def index

    @challenge = Challenge.find_by(:name => params[:name])
    current_user.sponsored_students.each do |row|
      StudentChallenge.create(:challenge_id => @challenge.id,:student_id=>row.student_id, :sponsor_id=> current_user.id)
    end
    # binding.pry


  end

  def show
  end


end
