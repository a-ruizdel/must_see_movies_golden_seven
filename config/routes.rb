Rails.application.routes.draw do
#Routes for directors

get("/directors/index", { :controller => "directors", :action => "directors" })
  # Routes to CREATE directors
get("/directors/new_director", { :controller => "directors", :action => "new_director" })

get("/directors/create_row_director", { :controller => "directors", :action => "create_row_director" })

# Routes to READ directors
 get("/directors",           { :controller => "directors", :action => "directors" })

 get("/directors/:id",       { :controller => "directors", :action => "show" })

# Routes to DELETE directors
get("/directors/delete_directors/:id", { :controller => "directors", :action => "destroy" })
# Routes to EDIT directors
get("/directors/edit_director/:id", { :controller => "directors", :action => "edit_director" })
get("/directors/update_directors/:id", { :controller => "directors", :action => "update_row_director" })


#Routes for actors

get("/actors", { :controller => "actors", :action => "actors" })
  # Routes to CREATE actors
get("/actors/new_actor", { :controller => "actors", :action => "new_actor" })

get("/actors/create_row_actor", { :controller => "actors", :action => "create_row_actor" })

# Routes to READ actors
 get("/actors/index",           { :controller => "actors", :action => "actors" })

 get("/actors/:id",       { :controller => "actors", :action => "show" })

# Routes to DELETE actors
get("/actors/delete_actors/:id", { :controller => "actors", :action => "destroy" })

# Routes to EDIT actors
get("/actors/edit_actor/:id", { :controller => "actors", :action => "edit_actor" })
get("/actors/update_actors/:id", { :controller => "actors", :action => "update_row_actor" })

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
