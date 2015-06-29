class HomeController < ApplicationController
  def index
    redirect_to goals_path
  end
end
