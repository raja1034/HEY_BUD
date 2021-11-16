class MatchesController < ApplicationController
  def index
    @matches = Match.all
    @potential_matches = User.all.where.not(id: current_user.id).matches

    # User.joins(:user_interests).where("user_interests.interest_id = current_user.user_interests.interest_id")
  end

  def matches
    current_user.interest_id = User.all.where.not(id: current_user.id).interest_id
  end
end

#sudo code
# @potential_matches = []
# Iterate over current_user.user_interests
# Grab from there the interest_id
# With that interest_id run the User.joins search query
# @potential_matches << result of User.joins search query



# sudo code --> This is just the search functionality

# 1. We need the current user, using the current_user helper method
# 2. Through the current user we have access to their interests and user_interest
# 3. Use the interest_id to find other users who have user_interest with this interest_id


# A match is only created when once a user clicks on the connect button of another user
# Connect Button does 2 things:
# 1. It connects you to a match
# 2. It take you to a index page of connected matches
# 3. We can select a match to view a chat
