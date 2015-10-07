class ArticlesController < ApplicationController

  def index
    @wiki = Wiki.find_by(id: params[:wiki_id])
    @articles = Article.where(wiki_id: params[:wiki_id])
  end

  def show
    @wiki = Wiki.find_by(id: params[:wiki_id])
    @article = Article.find_by(id: params[:id])
  end

  def new
    @wiki = Wiki.find_by(id: params[:wiki_id])
    @article = Article.new
  end

  def create
    params[:article].merge!(published: params[:published], needs_sources: params[:needs_sources], wiki_id: params[:wiki_id])

    @wiki = Wiki.find_by(id: params[:wiki_id])
    @article = Article.new(article_params)

    if @article.save
      redirect_to @wiki
    else
      render 'new'
    end
  end

  def edit
    @wiki = Wiki.find_by(id: params[:wiki_id])
    @article = Article.find_by(id: params[:id])
  end

  def update
    @wiki = Wiki.find_by(id: params[:wiki_id])
    @article = Article.find_by(id: params[:id])

    @article.update(article_params)

    redirect_to wiki_path(@wiki.id)
  end

  def destroy
    @wiki = Wiki.find_by(id: params[:wiki_id])
    @article = Article.find_by(id: params[:id])
    @article.destroy

    redirect_to wiki_path(@wiki.id)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :published, :needs_sources, :wiki_id)
  end

end
