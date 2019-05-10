class UsersController < ApplicationController
  def show
  	@my_author = User.find(params[:id])
  end
end
