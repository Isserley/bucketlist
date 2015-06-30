class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @goals = Goal.all
  end
end
