require 'rails_helper'

RSpec.describe ArticlesController do 
	describe "GET show" do
		before {
			@wiki = Wiki.create!(description: "Public Service Announcement")
			@article = Article.create!(title: "H to the OV", content: "By the OZ", published: true, needs_sources: false, wiki_id: @wiki.id)
		}
		it 'assigns the requested article to the @article' do

			# get "/wikis/#{@wiki.id}/articles/#{@article.id}"
			get :show, {wiki_id: @wiki.id, id: @article.id }
			assigns(:article).should == @article
		end
	end

	describe "GET new" do 
		before{
			@wiki = Wiki.create!(description:"Cash rules everything around me")	
		}
		it "renders the new article page" do
		    get :new, {wiki_id: @wiki.id}
		    expect(response).to render_template(:new)
		end
	end

	describe 'POST create' do 
		before{
			@wiki = Wiki.create!(description:"Cash rules everything around me")	
		}
		it "creates a new article" do 
			expect {
      			post :create, {wiki_id: @wiki.id, article: {:title => "M-E-T-H-O-D MAN", content: "ChessBoxin", published: false, needs_sources: false, wiki_id: @wiki.id} }
   			}.to change{Article.count}.by(1)
		end
  	end

  	describe 'GET edit' do 
  		before{
  			@wiki = Wiki.create!(description: "heroku sucks")
  			@article = Article.create(title: "H to the OV", content: "By the OZ", published: true, needs_sources: false, wiki_id: @wiki.id)
  		}
  		it 'renders edit page' do 
  			get :edit, {wiki_id: @wiki.id, id: @article.id}
  			expect(response).to render_template(:edit)
  		end
  	end
end