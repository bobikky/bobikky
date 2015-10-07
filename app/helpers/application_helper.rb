module ApplicationHelper

	def wiki_member?(userID, wikiID)
		test = UserWiki.where("user_id=? and wiki_id=?", userID, wikiID)
		test.length > 0
	end

end
