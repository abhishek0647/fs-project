Rails.application.routes.draw do
  resources :events

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :user do  
      resources :users, only: :show do
         post :generate_new_password_email
      end
   end
  
  
  resources :tags

  get '/interests' => 'users#interests'
  devise_for :users
  resources :users

  get '/home' => 'static_pages#home'
  get '/dashboard' => 'static_pages#dashboard'
  get '/contacts' => 'static_pages#contacts'
  get '/resources' => 'static_pages#resources'
  get '/blog' => 'static_pages#blog'
  get '/metarefresh' => 'static_pages#metarefresh'
  get '/gamification' => 'static_pages#gamification'
  get '/gcrc' => 'static_pages#gcrc'
  get '/mvp' => 'static_pages#mvp'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

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
