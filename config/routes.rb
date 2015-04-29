Rails.application.routes.draw do
  root :to => 'welcome#home'

  get 'identity/add_identity'

  get 'welcome/home'

  get 'achievements/create'

  get 'users/edit'

  get 'users/delete'

  get 'users/create'

  get 'users/update'

  get 'sessions/create'

  get 'sessions/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  post '/users/:id/challenges/new' => 'users#index'

  post '/searches/create' => 'searches#create'
  #the sessions#continue action should prompt users for more information like school name
  get "/signin" => 'users#new', :as => :signin
  get "/signout" => "sessions#destroy", :as => :signout
  get '/auth/linkedin/callback', to: 'sessions#create'
  get '/auth/venmo/callback', to: 'identity#add_identity'


  get '/users/:id/status' => 'users#status', as: 'select_status'
  patch '/users/:id/status' => 'users#status_selected', as: 'status_selected'

  get '/users/:id/student_edit' => 'users#student_edit', as: 'student_edit'
  # get '/users/:id/user_profile' => 'users#user_profile', as: 'user_profile'

  post '/users/:id' => 'users#follow', as: 'user_followed'
  post '/student_sponsors/create' => 'student_sponsors#create'






  get '/student_needs/:id/select_amount' => 'student_needs#select_amount', as: 'select_amount'

  post '/sponsor_needs/save_amount' => 'sponsor_needs#save_amount', as: "save_amount"

  get '/users/:id/student_show' => 'users#student_show', as: 'student_show'
  get '/sponsor_needs/:id/make_payment' => 'sponsor_needs#make_payment', as: 'make_payment'


  get '/student_needs/:id/back_need' => 'student_needs#back_need', as: 'back_need'
  post '/sponsor_needs/:id/back_need' => 'sponsor_needs#back_need', as: "need_backed"
  get '/student_needs/:id/edit' => 'student_needs#edit', as: "edit_student_need"

  patch 'challenges/:id' => 'challenges#update', as: "student_challenge"


  post 'challenges/new' => 'challenges#create'

  resources :needs

  resources :searches

  resources :users do
    resources :needs
    resources :achievements
    resources :challenges
  end

  resources :challenges, :only => [:new, :show, :index]
  resources :student_needs, :only => [:new, :create, :show]

  resources :search do
    get :autocomplete_school_name, :on => :collection
  end

end
