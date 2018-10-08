class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def vkontakte
  	@user = User.find_for_vkontakte_oauth request.env["omniauth.auth"]
    if @user.persisted?
      flash[:notice] = "Вконтач заработал"
      sign_in_and_redirect @user, :event => :authentication
    else
      flash[:notice] = "Вконтач нихуя не работает"
      redirect_to root_path
    end
  end

end
