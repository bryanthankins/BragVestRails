class AccountController < ApplicationController
	def create
		@ranks = Rank.all		 
		@user = User.new(params[:user])		 
		if @user.save
    		flash[:notice]= 'Account created'
    		self.current_user = @user  
    		session[:id] = @user.id 	
    		redirect_to '/'
    	else     
    		render :new    		
  		end
	end 
	
	def new 
		@ranks = Rank.all
	end
end
