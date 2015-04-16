# User form are to be nested in the user's form

Create :need (Student view) #permit params need and expense

<%= form_for (@user, :url => {:action => :create}) do |f| %>

  <%= f.label :new_need %>
  <%= f.text_field :new_need %><br />
  <%= f.label :expense %>
  <%= f.text_field :expense %><br />

  <%= f.submit %>
<% end %>


Create A Challenge [Sponsors View]

<%= form_for @user do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %><br />

  <%= f.label :start_date %>
  <%= f.text_field :start_date %><br />

  <%= f.label :end_date %>
  <%= f.text_field :end_date %><br />

  <%= f.submit %>
<% end %>

Accept Challenge / Deny Challenge  (Student View) (link)

Button: Follow / unfollow (conditional) (link) 
"follow#action(addto or remove out of database followers.all)"
Button: Sponsor Student (link) #Once you pay up you become a sponsor

Create A Challenge [Sponsors View]

























