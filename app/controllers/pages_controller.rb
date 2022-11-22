class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @bot = Bot.new
    @bots = Bot.all
  end
end
