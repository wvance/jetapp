Rails.application.routes.draw do
  get 'welcomes/index'

  resources :stickies
  resources :comments
  resources :activities, only:[:index]
    
  resources :user_friendships do 
    member do 
      put :accept
    end
  end

  devise_for :users
  
  root 'welcomes#index'

  # IDEAS ROUTES
  get 'ideas/showAll',        to: 'ideas#showAll',          :as => :showAll
  get 'ideas/showAuthorIdea', to: 'ideas#showAuthorIdea',   :as => :showAuthorIdea
  get 'ideas/new',            to: 'ideas#newIdea',          :as => :newIdea
  get 'ideas/showBMC/:id',    to: 'ideas#showBMC',          :as => :showBMC
  get 'ideas/:id',            to: 'ideas#showIdea',         :as => :showIdea
  get 'ideas/editIdea/:id',   to: 'ideas#editIdea',         :as => :editIdea
  post 'ideas/add',           to: 'ideas#add',              :as => :add     
  patch 'ideas/update',       to: 'ideas#update',           :as => :update
  delete 'ideas/:id',         to: 'ideas#delete',           :as => :delete

  # PROFILE ROUTES
  get '/:id',                 to: 'profiles#showProfile',   :as => :showProfile

  # get "profiles/showProfile", to: 'profiles#showProfile',   :as => :showProfile

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
