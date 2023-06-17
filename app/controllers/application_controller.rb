class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

 protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role, images: [:url, :context]])
   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role, images_attributes: [:url, :context]])
 end
 
end
