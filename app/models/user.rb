class User < ActiveRecord::Base
  has_many :skills

  has_many :student_sponsors
  has_many :sponsors, :class_name => 'User', :foreign_key => :sponsor_id
  has_many :students, :class_name => 'User', :foreign_key => :student_id


  has_many :student_sponsors, :foreign_key => :student_id
  has_many :sponsors, :through => :student_sponsors

  has_many :sponsored_students, :class_name => "StudentSponsor", :foreign_key => :sponsor_id
  has_many :students, :through => :sponsored_students

  has_many :student_needs
  has_many :needs, through: :student_needs


  def self.create_and_send_email(email)
    @user = User.create(:email => email)
    UserMailer.welcome_email(@user).deliver
    @user
  end


  has_one :identity

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  # validates :school_name, presence: true
  # validates :major, presence: true
  # validates :gender, presence: true
  # validates :race, presence: true
  # validates :location, presence: true
  # validates :gpa, presence: true



  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.email = auth["info"]["email"]
    end
  end

  def student?
    self.status.downcase == 'student'
  end

  def sponsor?
    self.status.downcase == 'sponsor'
  end

end
