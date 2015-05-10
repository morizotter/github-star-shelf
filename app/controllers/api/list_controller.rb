class Api::ListController < ApplicationController

  def index
    list =
      [{:name => "name_from_api_1"}, {:name => "name_from_api_2"}]
    render :json => list
  end
end
