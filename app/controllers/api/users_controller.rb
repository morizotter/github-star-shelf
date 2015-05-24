class Api::UsersController < ApplicationController

  def index
  end

  def me
    render :json => current_user.to_json
  end
end
