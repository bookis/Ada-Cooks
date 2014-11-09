Rails.application.routes.draw do

  # HOME PAGE ROUTE
  get '/', to: 'welcome#index', as: :root

  # USERS ROUTES
  get 'users/new', to: 'users#new', as: :new_user
  post 'users/create', to: 'users#create', as: :user
  patch 'users/update'
  get 'users/edit'
  get 'users/destroy'
  get 'users/index'
  get 'users/show'

  # INGREDIENTS ROUTES
  get 'ingredients/new', to: 'ingredients#new', as: :new_ingredient
  post 'ingredients/create', to: 'ingredients#create', as: :ingredient
  patch 'ingredients/update'
  get 'ingredients/edit'
  get 'ingredients/destroy'
  get 'ingredients/index'
  get 'ingredients/show'

  # RECIPES ROUTES
  get 'recipes/new', to: 'recipes#new', as: :new_recipe
  post 'recipes/create', to: 'recipes#create', as: :recipes
  patch 'recipes/:id/update', to: 'recipes#update', as: :update_recipe
  get 'recipes/:id/edit', to: 'recipes#edit', as: :edit_recipe
  get 'recipes/destroy'
  get 'recipes/index'
  get 'recipes/:id/show', to: 'recipes#show', as: :recipe

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
