class PagesController < ApplicationController
    # before_action :authenticate_user!

  def index
    # # if user_signed_in? #このメソッドもdeviseの機能だが6で作成したモデル名に合わせる(Accountならaccount_signed_in?)
    # # else
    # #    redirect_to new_user_session_path #deviseの機能（ただしコメントアウトしている）
    # end
  end
end
