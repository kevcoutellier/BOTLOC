class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]
  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @bot = Bot.find(params[:bot_id])
  end

  def create
    @bot = Bot.find(params[:bot_id])

    @booking = Booking.new(booking_params)
    @booking.bot = @bot
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to bot_booking_path(@bot, @booking)
    else
      render :new
    end
  end

  def approve
    @booking = Booking.find(params[:id])
    @booking.status = "approved"
    @booking.save

    # redirect_to bot_path(@bot)
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save

    # redirect_to bot_booking_path(@bot)
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end, :bot_id, :user_id)
  end

end
