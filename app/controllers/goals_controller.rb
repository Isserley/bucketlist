class GoalsController < ApplicationController
  before_action :find_goal, only:[:edit, :show, :update, :destroy]

  def index
    @goals = Goal.where(user_id: current_user.id)
    config = {
      consumer_key:    ENV['twitter_key'],
      consumer_secret: ENV['twitter_secret'],
      access_token: ENV['twitter_api_key'],
      access_token_secret: ENV['twitter_api_secret']
    }
    client = Twitter::REST::Client.new(config)
    user = client.user("dplbucketlist")

    client.update('yet another tweet')
    # binding.pry

    # return the user's timezone from their settings
    user.time_zone

    # return the user's name
    user.name
    # creates pagination for our goals
    
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    if @goal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @goal.update(goal_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @entries = Entry.where(goal_id: @goal.id)
  end

  def destroy
    @goal.destroy
    redirect_to root_path
  end

  private
  def find_goal
    @goal = Goal.find_by(id: params[:id])
  end
  def goal_params
    params.require(:goal).permit(:goal_title, :goal_img, :completed, :priority)
  end
end
