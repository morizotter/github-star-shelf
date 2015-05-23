# class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
#   def github
#     binding.pry
#     @user = User.find_or_create_by(user_params)
#
#     if @user.persisted?
#       sign_in_and_redirect @user, :event => :authentication
#       set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
#     else
#       session["devise.github_data"] = request.env["omniauth.auth"]
#       redirect_to new_user_registration_url
#     end
#   end
#
#   private
#   def user_params
#     request.env["omniauth.auth"].slice(:provider, :uid).to_h
#   end
# end

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
