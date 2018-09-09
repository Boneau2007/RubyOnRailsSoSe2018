module DeviseCustom extend ActiveSupport::Concern
  included do
    before_action :addedParams, if: :devise_controller?
  end

  def addedParams
    devise_parameter_sanitizer.permit(:sign_up, keys:[:username])
    devise_parameter_sanitizer.permit(:sign_update, keys:[:username])
  end

end
