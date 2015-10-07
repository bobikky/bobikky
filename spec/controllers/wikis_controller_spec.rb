require 'rails_helper'
RSpec.describe WikisController do
	describe "GET index" do
		it "assigns @wikis" do
			wiki = Wiki.create(description: "Halle Berry or Hallelujah?")
			get :index
			expect(assigns(:wikis)).to eq([wiki])
		end

		it 'renders the index template' do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "GET show" do
		before {@wiki = Wiki.create!(description: "dreams are reality\'s peace")}

	    it "assigns the requested wiki to the @wiki" do
	      get :show, id: @wiki
	      assigns(:wiki).should == @wiki
	    end

	    it "render show template" do
	      get :show, id: @wiki
	      response.should render_template :show
	    end

	    it 'assigns shows all the articles of that wiki' do
	    	@wiki2 = Wiki.create(description: "Music")
	    	@article1 = Article.create(title: "Kanye", content: "Dope Song", published: true, needs_sources: false, wiki_id: @wiki2.id)
	    	@article2 = Article.create(title: "To Pimp A Butterfly", content: "A Dope Album", published: true, needs_sources: false, wiki_id: @wiki2.id)
	    	get :show, id: @wiki2
	    	expect(assigns(:articles)).to eq([@article1, @article2])
	    end
	end
end