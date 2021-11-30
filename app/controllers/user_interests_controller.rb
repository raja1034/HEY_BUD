class UserInterestsController < ApplicationController


  def index
    @user_interests = current_user.user_interests
  end

  def create
    selected_interests = Interest.where(id: params["interest_ids"])
    current_user.interests = selected_interests
    redirect_to matches_path
  end

  def edit
    @user_interest = UserInterest.find(params[:id])
  end

  def update
   @user_interest = UserInterest.find(params[:id])
   @user_interest.update(user_interest_params)
   redirect_to user_interests_path(@user_interest)
  end

  private

  def user_interest_params
    params.require(:user_interest).permit(:description)
  end
end
