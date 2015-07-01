class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
 		@goals = Goal.paginate(:page => params[:page], :per_page => 3)
  end
end
