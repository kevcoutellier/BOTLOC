class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @bookings = Booking.where(user: current_user)
    @bots = Bot.where(user: current_user)
  end
end
