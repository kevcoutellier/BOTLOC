class BotsController < ApplicationController
  before_action :set_bot, only: %i[ show]
  def index
    @bots = Bot.all
    @markers = @bots.geocoded.map do |bot|
      {
        lat: bot.latitude,
        lng: bot.longitude,
        info_window: render_to_string(partial: "info_window", locals: {bot: bot})
      }
    end
  end

  def new
    @bot = Bot.new
  end

  def create
    @bot = Bot.new(params_bot)
    @bot.user = current_user

    if @bot.save
      redirect_to bots_path(@bot)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def params_bot
    params.require(:bot).permit(:name, :description, :price, :rating, :photo, :address)
  end

  def set_bot
     @bot = Bot.find(params[:id])
  end
end
