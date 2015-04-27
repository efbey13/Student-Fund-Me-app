Rails.application.routes.draw do
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

  root :to => 'welcome#home'

  resources :needs

  resources :searches

  resources :users do
    resources :needs
    resources :achievements
    resources :challenges
  end
  resources :challenges, :only => [:new, :show]
  resources :search do
    get :autocomplete_school_name, :on => :collection
  end




  post 'users/:id/challenges/new' => 'users#index'


  post '/searches/create' => 'searches#create'
  #the sessions#continue action should prompt users for more information like school name
  get "/signin" => 'users#new', :as => :signin
  get "/signout" => "sessions#destroy", :as => :signout
  get '/auth/linkedin/callback', to: 'sessions#create'
  get '/auth/venmo/callback', to: 'identity#add_identity'


  get '/users/:id/status' => 'users#status', as: 'select_status'
  patch '/users/:id/status' => 'users#status_selected', as: 'status_selected'

  get '/users/:id/student_edit' => 'users#student_edit', as: 'student_edit'
  get '/users/:id/user_profile' => 'users#user_profile', as: 'user_profile'

  post '/users/:id' => 'users#follow', as: 'user_followed'
  post '/student_sponsors/create' => 'student_sponsors#create'

  get '/student_needs/:id' => 'student_needs#show', as: 'student_need'
  get '/student_needs/:id/back_need' => 'student_needs#back_need', as: 'back_need'
  post '/sponsor_needs/back_need' => 'sponsor_needs#back_need', as: "need_backed"


  patch 'challenges/:id' => 'challenges#update', as: "student_challenge"

  post 'challenges/new' => 'challenges#create'
  # post 'challenges/:id' => 'challenges#update'
  # post '/user/id/challenges' => 'challenges#new'
  # should this route ^^^ take you to the view that confirms that the student need has been met
  # Or is it refering to the view where the form where sponsors can back the need/donate?




  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
