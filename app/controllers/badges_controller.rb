class BadgesController < ApplicationController
	 #before_filter :login_required
  def index
  end
  
  def show
    
     @rank = Rank.find(params[:rank_id])
     @ranks = Rank.all
     @badge = @rank.badges.find(params[:id])
     @badges = @rank.badges.all
     @achievements = @badge.achievements
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rank }
    end
  end
  


end
