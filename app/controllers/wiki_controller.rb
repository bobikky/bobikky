class WikiController < ApplicationController

  def index
    # @wiki = Wiki.all
    render 'wikis/index'
  end
end
