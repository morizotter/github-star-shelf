class SampleController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def binding_pry
    binding.pry
    redirect_to 'index'
  end
end
