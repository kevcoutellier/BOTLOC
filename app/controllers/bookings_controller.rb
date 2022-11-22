class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @bot = Bot.find(params [:bot_id])
    @booking = Booking.new(booking_params)
    @booking.bot = @bot
    @booking.user = current_user
    if
      @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to bot_path(@bot)
    end
  end
end
