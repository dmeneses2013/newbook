module Recommendation
  def recommend_books # recommend movies to a user
    # find all other users, equivalent to .where(‘id != ?’, self.id)
    other_users = self.class.all.where.not(id: self.id)
    # instantiate a new hash, set default value for any keys to 0
    recommended = Hash.new(0)
    # for each user of all other users
    other_users.each do |user|
      # find the movies this user and another user both liked
      common_books = user.books & self.books
      # calculate the weight (recommendation rating)
      weight = common_books.size.to_f / user.books.size
      # add the extra movies the other user liked
      (user.books - common_books).each do |book|
        # put the movie along with the cumulative weight into hash
        recommended[book] += weight
      end
    end
    # sort by weight in descending order
    sorted_recommended = recommended.sort_by { |key, value| value }.reverse
  end
end
