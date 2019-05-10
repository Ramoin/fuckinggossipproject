class GossipsController < ApplicationController

	def index
    	@gossips = Gossip.all
  	end

  	def show
  		@my_gossip = Gossip.find(params[:id].to_i)
  		@my_author = User.find(@my_gossip.user_id)
  	end

  	def new
  	end

  	def create
  		puts '=' * 60
  		puts params
  		puts '=' * 60
  		@gossip_new = Gossip.new(title: params[:title], content: params[:content], user_id: rand(101..110)) 
  			 	if @gossip_new.save
  			 		redirect_to '/'
  			 	else
  			 		flash[:danger] = "Le titre doit faire entre 3 et 14 caractères boloss !"  
  			 		redirect_to(new_gossip_path)
  				end
  	end	

end
