module ApplicationHelper

	def wiki_member?(userID, wikiID)
		return true if User.find(userID).admin?
		test = UserWiki.where("user_id=? and wiki_id=?", userID, wikiID)
		test.length > 0
	end

end
