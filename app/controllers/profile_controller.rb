class ProfileController < ApplicationController
  def new
  end

  def create
    current_user.avatar_id = params[:avatar_id]
    current_user.interests = Interest.where(id: params[:interest_ids])
    current_user.save
    redirect_to root_path
  end
end
