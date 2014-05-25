Rails.application.routes.draw do
  resources :games

  resources :users
  
  resources :pages
  
# Maps http requests to the corresponding methods
  get 'index', :to => 'pages#index'

  get 'register', :to => 'users#new'

  get 'play', :to => 'games#index'
  
  post 'games/submit_answer' => 'games#submit_answer', :as => :submit_answer
  
  post 'games/join' => 'games#join', :as => :join
  
  post 'games/leave' => 'games#leave', :as => :leave
  
  get 'login', :to => 'users#login'
 
  post 'login' => 'users#login_attempt', :as => :login_attempt
  
  get 'logout' => 'users#logout'
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'

  # Example of regular route:
  #   get 'games/:id' => 'games#show'

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
