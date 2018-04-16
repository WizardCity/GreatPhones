class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 
# Un-Comment to allow User to check isAdmin on signup. (Must also uncomment in views/devise/registration/new.html.erb) 

#   before_action :configure_permitted_parameters, if: :devise_controller?
#   protected
#   def configure_permitted_parameters
#       devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, :isAdmin) }
#       devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password) }
#   end
  
end
