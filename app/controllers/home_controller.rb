class HomeController < ApplicationController
  def index
    @ranks = Rank.all
  end

end
