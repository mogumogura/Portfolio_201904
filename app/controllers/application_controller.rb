class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [
        :name,
        :postal_code,
        :address])
  end

    # ログイン後に遷移するページ
  def after_sign_in_path_for(resource)
      edit_user_path(resource)
  end
     # ログアウト後に遷移するページ
  def after_sign_out_path_for(resource_or_root)
    new_user_session_path
  end

end