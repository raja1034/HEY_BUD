class UserInterestsController < ApplicationController
  def index
    @user_interests = current_user.user_interests

    #  @bookings = Booking.where(user_id: current_user)
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
