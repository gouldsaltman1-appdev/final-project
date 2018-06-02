class UsersController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    def index
        @users = User.all
        render("user_templates/index.html.erb")
    end
    
    def show
        @user = User.find(params.fetch("id_to_display"))
               render("user_templates/show.html.erb")
    end
    
end