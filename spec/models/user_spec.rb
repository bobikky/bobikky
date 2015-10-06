require 'rails_helper'

describe User do 
	describe 'associations' do
		before(:each) do
			@user = User.create!(email: "wyethjackson@gmail.com", password: "123")
			@wiki1 = Wiki.create!(description: "TV Shows")
			@wiki2 = Wiki.create!(description: "TV Shows")
			@wiki3 = Wiki.create!(description: "TV Shows")
			
			UserWiki.create!(user_id: @user.id, wiki_id: @wiki1.id)
			UserWiki.create!(user_id: @user.id, wiki_id: @wiki2.id)
			UserWiki.create!(user_id: @user.id, wiki_id: @wiki3.id)
		end

		it 'returns the articles in a specific category' do
			expect(@user.wikis).to eq([@wiki1, @wiki2, @wiki3])
		end
	end
end