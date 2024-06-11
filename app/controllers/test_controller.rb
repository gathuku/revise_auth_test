class TestController < ApplicationController
  before_action :authenticate_user!
  
  def index
    head :ok
  end
end
