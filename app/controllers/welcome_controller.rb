class WelcomeController < ApplicationController
  def index
    redirect_to '/properties'
  end
end
