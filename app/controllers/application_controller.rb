class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
        flash[:notice] = "ログインに成功しました" #　 <-任意で
        user_path(current_user.id)  #　指定したいパスに変更
    end

    protect_from_forgery with: :exception

      helper_method :current_cart

      def current_cart
        if session[:cart_id]
          @cart = Cart.find(session[:cart_id])
        else
          @cart = Cart.create
          session[:cart_id] = @cart.id
        end
      end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :admin])
    end
end
