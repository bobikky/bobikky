require 'rails_helper'

RSpec.describe ArticlesController do 
	describe "GET show" do
		before {
			@wiki = Wiki.create!(description: "Public Service Announcement")
			p @wiki.id
			p @wiki.description
			@article = Article.create!(title: "H to the OV", content: "By the OZ", published: true, needs_sources: false, wiki_id: @wiki.id)
			p @article.id
			p @article.title
		}
		it 'assigns the requested article to the @article' do

			# get "/wikis/#{@wiki.id}/articles/#{@article.id}"
			get :show, {wiki_id: @wiki.id, id: @article.id }
			assigns(:article).should == @article
		end
	end

	# describe "GET new" do 


	# end

	describe 'POST create' do 
		before{
			@wiki = Wiki.create!(description:"Cash rules everything around me")
			
		}
		it "renders the new article page" do
		    get :new, {wiki_id: @wiki.id}
		    expect(response).to render_template(:new)
		end

		it "creates a new article" do 
			expect {
      			post :create, {wiki_id: @wiki.id, article: {:title => "M-E-T-H-O-D MAN", content: "ChessBoxin", published: false, needs_sources: false, wiki_id: @wiki.id} }
   			}.to change(Article, :count).by(1)
		    # post :create, {wiki_id: @wiki.id}, :article => {:title => "M-E-T-H-O-D MAN", content: "ChessBoxin", published: true, needs_sources: false, wiki_id: @wiki.id}}
		    # get "/wikis/#{@wiki.id}"
		    # expect(assigns(:articles)).to eq([:article])
		
		end
  	end

end