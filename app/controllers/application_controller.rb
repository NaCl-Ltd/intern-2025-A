class ApplicationController < ActionController::Base
  include SessionsHelper
  around_action :switch_locale

  private
  def switch_locale(&action)
      I18n.with_locale(locale, &action)
  end

  def locale
    @locale ||= params[:locale] || I18n.default_locale
  end

    # ユーザーのログインを確認する
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url, status: :see_other
      end
    end
end
