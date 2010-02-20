class RanksController < ApplicationController
  
  # GET /ranks/Tiger
  # GET /ranks/1.xml
  def show    
    @rank = Rank.find(params[:id])
 	@ranks = Rank.all
 	@badges = @rank.badges
 	@badge = @rank.badges.first
 	redirect_to rank_badge_path(@badge.rank, @badge)   
  end
end
