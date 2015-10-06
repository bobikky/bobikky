class WikisController < ApplicationController

	# before_filter :authenticate_user!, :except => [:index]

  def index
    @final_array = []
    @wikis = Wiki.all
    @wikis.each do |wiki|
			articles = Article.where(wiki_id: wiki.id).first(2)
			@final_array << wiki.as_json.merge({"articles" =>articles})
    end
  	respond_to do |format|
  		format.html
  		format.json { render json: @final_array }
  	end
  end

  def show
  	@wiki = Wiki.find_by(id: params[:id])
  	@articles = Article.where(wiki_id: params[:id])

    render :"/wikis/show"
  end

end
