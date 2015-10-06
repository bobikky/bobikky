require 'rails_helper'

describe Category do 
	describe 'associations' do
		before(:each) do
			@wiki = Wiki.create!(description: "TV show wiki")
			@category = Category.create!(name: "TV Show")
			@article1 = Article.create!(title: "Narcos", content: "good show", published: true, needs_sources: false, wiki_id: @wiki.id)
			@article2 = Article.create!(title: "Game of Thrones", content: "good show", published: true, needs_sources: false, wiki_id: @wiki.id)
			@article3 = Article.create!(title: "Modern Family", content: "good show", published: true, needs_sources: false, wiki_id: @wiki.id)
			
			ArticleCategory.create!(article_id: @article1.id, category_id: @category.id)
			ArticleCategory.create!(article_id: @article2.id, category_id: @category.id)
			ArticleCategory.create!(article_id: @article3.id, category_id: @category.id)
		end

		it 'returns the articles in a specific category' do
			expect(@category.articles).to eq([@article1, @article2, @article3])
		end
	end
end