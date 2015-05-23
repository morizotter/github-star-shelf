class SampleController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def action_1
    binding.pry
    redirect_to 'index'
  end
end
