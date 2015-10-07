require 'rails_helper'


describe Article do 
	describe 'associations' do
		before(:each) do
			@wiki = Wiki.create!(description: "A Description")
			@article = Article.create!(title: "Narcos", content: "good show", published: true, needs_sources: false, wiki_id: @wiki.id)
			@category1 = Category.create!(name: "TV Show")
			@category2 = Category.create!(name: "Dope things")
			ArticleCategory.create!(article_id: @article.id, category_id: @category1.id)
			ArticleCategory.create!(article_id: @article.id, category_id: @category2.id)
		end

		it 'returns the article\'s wiki' do
			expect(@article.wiki).to eq @wiki
		end

		it 'returns the article\'s categories' do
			expect(@article.categories).to eq([@category1, @category2])
		end
	end
end