Rails.application.routes.draw do
  # Routes for the Review resource:
  # CREATE
  get "/new_review/:destination", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/new_photo/:destination", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Destination resource:
  # CREATE
  get "/destinations/new", :controller => "destinations", :action => "new"
  post "/create_destination", :controller => "destinations", :action => "create"

  # READ
  get "/destinations", :controller => "destinations", :action => "index"
  get "/destinations/:id", :controller => "destinations", :action => "show"
  get "/filter_destinations", :controller => "destinations", :action => "filter"

  # UPDATE
  get "/destinations/:id/edit", :controller => "destinations", :action => "edit"
  post "/update_destination/:id", :controller => "destinations", :action => "update"

  # DELETE
  get "/delete_destination/:id", :controller => "destinations", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  get "/update_user", :controller => "users", :action => "update"

  get "/delete_user/:id", :controller => "users", :action => "destroy"

  root to: "users#show"
end
