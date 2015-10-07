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

	describe "GET new" do
		it "renders new template" do
			get :new
			response.should render_template :new
		end
	end

	describe 'POST create' do 

		it "creates a new wiki" do 
			expect {
      			post :create, {wiki: {:description => "Coding Wiki"} }
   			}.to change(Wiki, :count).by(1)
		    # post :create, {wiki_id: @wiki.id}, :article => {:title => "M-E-T-H-O-D MAN", content: "ChessBoxin", published: true, needs_sources: false, wiki_id: @wiki.id}}
		    # get "/wikis/#{@wiki.id}"
		    # expect(assigns(:articles)).to eq([:article])
		
		end
  	end

  	describe 'DELETE destroy' do
  		before{
  				@wiki = Wiki.create!(description: "Computers")
  			}
  		it "deletes a wiki" do
  			
  			expect(@wiki.destroy).to change(Wiki, :count).by(1)
  		end
  	end

  	describe 'GET add_user' do
  		before{@wiki = Wiki.create!(description: "36 chambers")
  			@user = User.create!(email: "wyethjackson@gmail.com", password: "123")
  			allow(controller).to receive(:current_user) { @user } 
  		}
  		it 'adds a wiki to a current users list of wikis' do
  			get :add_user, {id: @wiki.id }
  			expect(@user.wikis).to eq([@wiki])
  		end
  	end

end