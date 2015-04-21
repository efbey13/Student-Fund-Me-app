# User form are to be nested in the user's form

Create Need (Student view) #permit params need and expense

<%= form_for @user do |f| %>
  <%= f.fields_for :student_needs do |f| %>
    
    <%= f.label :title %>
    <%= f.text_field :title %><br />

    <%= f.submit "Save Need" %>
  <% end %>
<% end %>>

   private

  def student_params
   params.require(:student).permit(:title)
  end

# <%= form_for (@user, :url => {:action => :create}) do |f| %>
#   <%= f.label :new_need %>
#   <%= f.text_field :new_need %><br />
#   <%= f.label :expense %>
#   <%= f.integer_field :expense %><br /> ?

#   <%= f.submit %>
# <% end %>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Create A Challenge [Sponsors View]

<%= form_for @user do |f| %>
  <%= f.fields_for :student_needs do |f| %>
    <%= f.label :name %>
    <%= f.text_field :name %><br />

    <%= f.label :start_date %>
    <%= f.date_field :start_date %><br />

    <%= f.label :end_date %>
    <%= f.date_field :end_date %><br />

    <%= f.submit %>
    <% end %>
<% end %>>

private

  def student_params
   params.require(:student).permit(:name, :start_date, :end_date)
  end

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

need a form to index through all of the students (students.all) that need a sponsor 
maybe a category to filter results like by major, school, gpa 
if they select biology then students.all where(sponsor = false && major = biology)

to get the drop down menus
collection_select(object, method, collection, value_method, text_method, options = {}, html_options = {})

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

login as sponsor and see student needs (link)
<% link_to "#{student.first_name}", student_needs_path %>> #how does the link know which student via the view?

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Accept Challenge / Decline Challenge (Student View) (link)
#Student set semester dates before sponsor offer challenges
#only set challenges in the beginning of semester (1 month)
#validation - if today's date before semester start_date

In User model user.rb

def new
  if current_user
    @user = User.find(params[:id])
  end
end

def accept #student might need a followers table - join table 
  @user = User.find(params[:id])
  challenge = Challenge.find(params['challenge_id'])
  challenge.update(accepted: true) 
  #add challenge to user challenges 
  flash[:notice] = "Challenge Accepted"
  redirect_to profile_path
end

def decline
  challenge = Challenge.find(params['challenge_id'])
  challenge.update(accepted: false) 
  flash[:notice] = "Challenge Declined"
  redirect_to profile_path
end

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Button: Follow / unfollow (conditional) (link)
<% link_to "Follow", user_follow_path %>>
<% link_to "Unfollow", user_unfollow_path %>
>
"user#follow or unfollow (addto or remove out of database followers.all)"
In User model user.rb

def new
  if current_user
    @user = User.find(params[:id])
  end
end

def follow #student might need a followers table - join table 
  @user = User.find(params[:id])
  #extra step needed
  #add user id of follower to database
  user_followers.update() 
  flash[:notice] = "no flash notice"
  redirect_to pool_path(@pool)
end

def unfollow
  @user = User.find(params[:id])
  user_followers.update()
  redirect_to profile_path
end

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Button: Sponsor Student (link) #Once you pay up, you become a sponsor

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

Student Semester Start and End_date

<%= form_for @user do |f| %>
  <%= f.fields_for :student_semester do |f| %>
    <%= f.label :semester_name (fall, spring etc.) %>
    <%= f.text_field :semester_name %><br />

    <%= f.label :start_date %>
    <%= f.date_field :start_date %><br />

    <%= f.label :end_date %>
    <%= f.date_field :end_date %><br />

    <%= f.submit %>
    <% end %>
<% end %>

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>






















