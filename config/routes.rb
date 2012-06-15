Pling::Application.routes.draw do
  match '/free', to: 'users#new_free'
  #match '/freehr', to: 'users#new_free_hr'
  #match '/thanks_free', to: 'static_pages#thanks_free'
  resources :users

  #match '/thanks', to: "referrals#thanks"
  
  root to: 'users#new'

  match '/traveler', to: 'users#new', user_type: "traveler"
  match '/translator', to: "users#new", user_type: "translator"
  
  match '/profile', to: 'static_pages#profile'
  match '/admin', to: 'static_pages#admin'
  match '/register', to: 'static_pages#register'
  match '/press', to: 'static_pages#about'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/palmlingforskypeconfirmation', to: 'static_pages#thanks'

  #match '/thanks', to: 'users#thanks'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
