Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Routes for the Page resource:
  # CREATE
  get "/pages/new", :controller => "pages", :action => "new"
  post "/create_page", :controller => "pages", :action => "create"

  # READ
  get "/pages", :controller => "pages", :action => "index"
  get "/pages/:id", :controller => "pages", :action => "show"

  # UPDATE
  get "/pages/:id/edit", :controller => "pages", :action => "edit"
  post "/update_page/:id", :controller => "pages", :action => "update"

  # DELETE
  get "/delete_page/:id", :controller => "pages", :action => "destroy"
  #------------------------------

  root "pages#index"



  # Routes for the Page resource:
  # CREATE
  get "/pages/new", :controller => "pages", :action => "new"
  post "/create_page", :controller => "pages", :action => "create"

  # READ
  get "/pages", :controller => "pages", :action => "index"
  get "/pages/:id", :controller => "pages", :action => "show"

  # UPDATE
  get "/pages/:id/edit", :controller => "pages", :action => "edit"
  post "/update_page/:id", :controller => "pages", :action => "update"

  # DELETE
  get "/delete_page/:id", :controller => "pages", :action => "destroy"

  # READ BLOG
  get "/pages/blog/:id",:controller => "pages", :action => "blog"

  #------------------------------

  # Routes for the Blog resource:
  # CREATE
  get "/blogs/new/:id", :controller => "blogs", :action => "new"
  post "/create_blog", :controller => "blogs", :action => "create"
  get "/create_blog", :controller => "blogs", :action => "create"

  # READ
  #get "/blogs", :controller => "blogs", :action => "index"
  get "/blogs/:id", :controller => "blogs", :action => "show"

  # UPDATE
  get "/blogs/:id/edit", :controller => "blogs", :action => "edit"
  post "/update_blog/:id", :controller => "blogs", :action => "update"

  # DELETE
  get "/delete_blog/:id", :controller => "blogs", :action => "destroy"
  #------------------------------

  # Routes for the Calendar resource:
  # CREATE
  get "/calendars/new", :controller => "calendars", :action => "new"
  post "/create_calendar", :controller => "calendars", :action => "create"

  # READ
  get "/calendars", :controller => "calendars", :action => "index"
  get "/calendars/:id", :controller => "calendars", :action => "show"

  # UPDATE
  get "/calendars/:id/edit", :controller => "calendars", :action => "edit"
  post "/update_calendar/:id", :controller => "calendars", :action => "update"

  # DELETE
  get "/delete_calendar/:id", :controller => "calendars", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  devise_for :users
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
