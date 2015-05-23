class SampleController < ApplicationController

  def index
  end

  def binding_pry
    binding.pry
    redirect_to 'index'
  end
end
