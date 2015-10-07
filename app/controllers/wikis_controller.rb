class WikisController < ApplicationController

	# before_filter :authenticate_user!, :except => [:index]

  def index
    @final_array = []
    @wikis = Wiki.all

    @wikis.each do |wiki|
      if user_signed_in?
        articles = Article.where(wiki_id: wiki.id).first(2)
      else
        articles = Article.where("published = ? AND wiki_id = ?", true, wiki.id).first(2)
      end
      @final_array << wiki.as_json.merge({"articles" =>articles})
    end

    respond_to do |format|
      format.html
      format.json { render json: @final_array }
    end
  end


  def show
    puts "we are in"
    @wiki = Wiki.find_by(id: params[:id])
    if user_signed_in?
      @articles = Article.where(wiki_id: params[:id])
    else
    	@articles = Article.where("published = ? AND wiki_id = ?", true, params[:id])
    end
    render :"/wikis/show"
  end

  def new
    redirect '/'
  end

  def create
    redirect '/'
  end

  def destroy
    redirect '/'
  end

end
