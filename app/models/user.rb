class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable

  has_many :user_wikis
  has_many :wikis, { through: :user_wikis }
end
