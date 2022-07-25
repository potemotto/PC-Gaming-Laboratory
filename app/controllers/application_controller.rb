class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? #ログイン機能について

  private

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_root_path    # ログイン後に遷移するpathを設定
    when Public
      root_path # ログイン後に遷移するpathを設定
    end
  end

  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定(publicブランチ統合後は別のリンクに変更)
  end

  #ログイン機能について
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end