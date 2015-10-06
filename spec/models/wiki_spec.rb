require 'rails_helper'

describe Wiki do 
	describe 'associations' do
		before(:each) do
			
			@wiki = Wiki.create!(description: "TV Shows")
			@article1 = Article.create!(title: "Article 1", content: "Some Content", published: true, needs_sources: false, wiki_id: @wiki.id)
			@article2 = Article.create!(title: "Article 2", content: "Some Content", published: true, needs_sources: false, wiki_id: @wiki.id)
			
			@user1 = User.create!(email: "wyethjackson@gmail.com", password: "123")
			@user2 = User.create!(email: "wyeth@wyeth.com", password: "123")
			UserWiki.create!(user_id: @user1.id, wiki_id: @wiki.id)
			UserWiki.create!(user_id: @user2.id, wiki_id: @wiki.id)
			
		end

		it 'returns the articles in a specific wiki' do
			expect(@wiki.articles).to eq([@article1, @article2])
		end

		it 'returns the users that belong to a specific wiki' do
			expect(@wiki.users).to eq([@user1, @user2])
		end
	end
end