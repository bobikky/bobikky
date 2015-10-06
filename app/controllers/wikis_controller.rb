class WikisController < ApplicationController

	# before_filter :authenticate_user!, :except => [:index]

  def index
    @wikis = Wiki.all
  	respond_to do |format|
  		format.html
  		format.json { render json: @wikis }
  	end
  end

end
