class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
        flash[:notice] = "ログインに成功しました" #　 <-任意で
        user_path(current_user.id)  #　指定したいパスに変更
    end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    end
end
