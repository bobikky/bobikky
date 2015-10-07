require 'ffaker'

10.times do
  User.create!(email: FFaker::Internet.email, password: "password")
end

20.times do
  Wiki.create!(description: FFaker::LoremFR.phrase)
end

50.times do
  Article.create!(title: FFaker::Movie.title, content: FFaker::LoremFR.paragraph, published: true, needs_sources: false, wiki_id: (1..20).to_a.sample)
end

50.times do
  Article.create!(title: FFaker::Movie.title, content: FFaker::LoremFR.paragraph, published: false, needs_sources: true, wiki_id: (1..20).to_a.sample)
end

50.times do
  Category.create!(name: FFaker::InternetSE.company_name_single_word)
end

users = User.all
users.each do |user|
  5.times do
    user.wikis << Wiki.all.sample
  end
end

articles = Article.all
articles.each do |article|
  3.times do
    article.categories << Category.all.sample
  end
end

User.create!(email: "admin@admin.com", password: "admin", admin: true)