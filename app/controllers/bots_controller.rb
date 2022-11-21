class BotsController < ApplicationController
  before_action :set_bot, only: [:show]
  def index
    @bots = Bots.all
  end

  def new
    @bot = Bot.new
  end

  def create
    @bot = Bot.new(params_bot)
    if @bot.save
      redirect_to bot_path(@bot)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def params_bot
    params.require(:bot).permit(:name, :description, :price, :rating)
  end

  def set_bot
    @bot = Bot.find(params[:id])
  end
end