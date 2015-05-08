class SampleController < ApplicationController

  def index
  end

  def action_1
    render :action => 'index'
  end
end
