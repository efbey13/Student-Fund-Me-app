Rails.application.routes.draw do
  get 'welcome/home'

  get 'achievements/create'

  get 'challenges/edit'

  get 'challenges/delete'

  get 'challenges/create'

  get 'challenges/update'

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

  resources :users do
    resources :needs
    resources :challenges
    resources :achievements
  end



  #the sessions#continue action should prompt users for more information like school name
  get "/signin" => 'users#new', :as => :signin
  get "/signout" => "sessions#destroy", :as => :signout
  get '/auth/linkedin/callback', to: 'sessions#create'

  get '/users/:id/status' => 'users#status', as: 'select_status'
  patch '/users/:id/status' => 'users#status_selected', as: 'status_selected'

  get '/users/:id/student_edit' => 'users#student_edit', as: 'student_edit'

  get '/student_needs/:id' => 'student_needs#show', as: 'student_need'

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
