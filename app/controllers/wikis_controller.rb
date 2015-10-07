class WikisController < ApplicationController

	# before_filter :authenticate_user!, :except => [:index]

  def index
    @final_array = []
    @wikis = Wiki.all

    @wikis.each do |wiki|
      if user_signed_in? && current_user.wikis.include?(wiki)
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
    @wiki = Wiki.find_by(id: params[:id])
    if user_signed_in? && current_user.wikis.include?(@wiki)
      @articles = Article.where(wiki_id: params[:id])
    else
    	@articles = Article.where("published = ? AND wiki_id = ?", true, params[:id])
    end
    render :"/wikis/show"
  end

  def search
      # Article and Wiki specified
      if (!params[:article].empty? && !params[:wiki_type].empty?)
        @article_search = params[:article]
        @wiki_search = params[:wiki_type]
        @wiki = Wiki.find_by(description: params[:wiki_type])
        @articles = Article.where("(lower(title) LIKE ? OR lower(content) LIKE ?) AND wiki_id = ?", "%#{params[:article].downcase}%", "%#{params[:article].downcase}%", @wiki.id.to_s)
        render :"/wikis/results"
      # Only Article specified
      elsif !params[:article].empty?
        @article_search = params[:article]
        @articles = Article.where("lower(title) LIKE ? OR lower(content) LIKE ?", "%#{params[:article].downcase}%", "%#{params[:article].downcase}%")
          render :"/wikis/results"
      # Only Wiki specified
      else
        @wiki_search = params[:wiki_type]
        @wiki = Wiki.find_by(description: params[:wiki_type])
        @articles = Article.where("wiki_id = ?", @wiki.id.to_s)
        render :"/wikis/results"
      end
  end

  def searchwiki
    @wikis = Wiki.where('lower(description) LIKE ?', "%#{params[:description].downcase}%")

    render json: @wikis
  end

  def new
    redirect_to '/' if !current_user
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new(wiki_params)
    if @wiki.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    redirect '/'
  end

  def add_user
    @wiki = Wiki.find_by(id: params[:id])
    if current_user
      current_user.wikis << @wiki
      redirect_to @wiki
    else
      redirect_to new_user_session_path
    end
  end

  def wiki_params
    params.require(:wiki).permit(:description)
  end
end
