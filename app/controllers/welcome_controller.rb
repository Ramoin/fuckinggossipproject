class WelcomeController < ApplicationController
  
  def show
  	@welcome = Welcome.find(params[:id])
  end

end
