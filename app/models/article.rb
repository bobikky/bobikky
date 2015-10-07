class Article < ActiveRecord::Base
  belongs_to :wiki
  has_many :article_categories
  has_many :categories, { through: :article_categories }

  validates :published, :inclusion => {:in => [true, false]}
  validates :needs_sources, :inclusion => {:in => [true, false]}
end
