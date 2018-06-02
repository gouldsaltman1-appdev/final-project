Rails.application.routes.draw do

  # Routes for the Loan resource:

  # CREATE
  get("/loans/new", { :controller => "loans", :action => "new_form" })
  post("/create_loan", { :controller => "loans", :action => "create_row" })

  # READ
  get("/loans", { :controller => "loans", :action => "index" })
  get("/loans/:id_to_display", { :controller => "loans", :action => "show" })

  # UPDATE
  get("/loans/:prefill_with_id/edit", { :controller => "loans", :action => "edit_form" })
  post("/update_loan/:id_to_modify", { :controller => "loans", :action => "update_row" })

  # DELETE
  get("/delete_loan/:id_to_remove", { :controller => "loans", :action => "destroy_row" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Equipment resource:

  # CREATE
  get("/equipment/new", { :controller => "equipment", :action => "new_form" })
  post("/create_equipment", { :controller => "equipment", :action => "create_row" })

  # READ
  get("/equipment", { :controller => "equipment", :action => "index" })
  get("/equipment/:id_to_display", { :controller => "equipment", :action => "show" })

  # UPDATE
  get("/equipment/:prefill_with_id/edit", { :controller => "equipment", :action => "edit_form" })
  post("/update_equipment/:id_to_modify", { :controller => "equipment", :action => "update_row" })

  # DELETE
  get("/delete_equipment/:id_to_remove", { :controller => "equipment", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:id_to_display", { :controller => "user", :action => "show"})
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "loans#index"
  get("/", { :controller => "loans", :action => "index" })
 
    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
end
