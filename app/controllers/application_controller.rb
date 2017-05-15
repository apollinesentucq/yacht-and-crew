class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authentcate_user!

  def configure_permitted_parameters, if: :deviser_controller?
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name ])

    # devise_parameter_sanitizer.permit(:account_update, keys: [])
  end
end
