class MatchesController < ApplicationController
  def index
    @matches = Match.all
    @potential_matches = sort_ranked_users
  end

  private

  def find_interest_ids_of_current_user
    array_of_interest_instances = Interest.joins(:users).where(users: { id: current_user.id })
    array_of_interest_instances.ids
  end

  def find_users_through_interest_id
    array_of_users = []
    array_of_interest_ids = find_interest_ids_of_current_user
    array_of_interest_ids.each do |interest_id|
      array_of_users << User.joins(:interests).where(interests: { id: interest_id }).where.not(id: current_user.id).to_a
    end
    array_of_users
  end

  def rank_potential_matches
    user_scoring_hash = Hash.new 0
    unranked_matches = find_users_through_interest_id.flatten
    unranked_matches.each do |user_instance|
      user_scoring_hash[user_instance] += 1
    end
    user_scoring_hash
  end

  def sort_ranked_users
    rank_potential_matches.sort_by { |_key, value| value }.reverse.to_h
  end
end


# A match is only created when once a user clicks on the connect button of another user
# Connect Button does 2 things:
# 1. It connects you to a match
# 2. It take you to a index page of connected matches
# 3. We can select a match to view a chat
