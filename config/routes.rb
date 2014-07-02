Rails.application.routes.draw do
  resources :bookracks
#  resources :books
#  devise_for :users
  devise_for :users, :controllers => {
    :sessions      => 'users/sessions',
    :registrations => 'users/registrations'
  }
  root to: "bookracks#index"

  get    'bookracks/:id/books'          => 'books#index'   , as: :books
  post   'bookracks/:id/books'          => 'books#create'
  get    'bookracks/:id/books/new'      => 'books#new'     , as: :new_book
  get    'bookracks/:id/books/:id/edit' => 'books#edit'    , as: :edit_book
  get    'bookracks/:id/books/:id'      => 'books#show'    , as: :book
  patch  'bookracks/:id/books/:id'      => 'books#update'
  put    'bookracks/:id/books/:id'      => 'books#update'
  delete 'bookracks/:id/books/:id'      => 'books#destroy'


#                   books GET    /books(.:format)               books#index
#                         POST   /books(.:format)               books#create
#                new_book GET    /books/new(.:format)           books#new
#               edit_book GET    /books/:id/edit(.:format)      books#edit
#                    book GET    /books/:id(.:format)           books#show
#                         PATCH  /books/:id(.:format)           books#update
#                         PUT    /books/:id(.:format)           books#update
#                         DELETE /books/:id(.:format)           books#destroy


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
