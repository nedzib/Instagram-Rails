class UsersSearchReflex < ApplicationReflex
  def perform(query = "")
    return unless query.size > 2
    # result = HTTP.get("http://openlibrary.org/search.json?#{{q: query}.to_query}")
    @searchUsers = Person.where("username like ? or username like? or username like? or username like?", "%" + query.upcase + "%", "%" + query.downcase + "%", "%" + query.capitalize + "%", "%" + query + "%")
  end
end
