Rails.application.routes.draw do

  get 'subjects/index' => 'subjects#index', as: :subjects_index

  get 'subjects/show/:id' => 'subjects#show', as: :subjects_show

  get 'subjects/new' => 'subjects#new', as: :subjects_new

  post 'subjects/create' => 'subjects#create', as: :subjects_create
  
  get 'subjects/edit/:id' => 'subjects#edit' , as: :subjects_edit

  patch 'subjects/update/:id' => 'subjects#update', as: :subjects_update

  delete 'subjects/destroy/:id' => 'subjects#destroy', as: :subjects_destroy
	
	post 'subjects/:id/comments/create' => 'comments#create', as: :comments_create
	

  get 'pages/index'

  get 'pages/show'


  devise_for :users
  
	root 'pages#index'
	



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
