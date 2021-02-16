# config/initializers/rails_admin.rb
RailsAdmin.config do |config|
    config.parent_controller = "::ApplicationController"
    config.authorize_with do
      unless current_user.admin?
        redirect_to(
          main_app.root_path,
          alert: "You are not permitted to view this page"
        )
      end
    end
  
    config.current_user_method { current_user }
  end