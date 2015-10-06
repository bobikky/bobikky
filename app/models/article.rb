class Article < ActiveRecord::Base
  belongs_to :wiki
  has_many :article_categories
  has_many :categories, { through: :article_categories }
end
