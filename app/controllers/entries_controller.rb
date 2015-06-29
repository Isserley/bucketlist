class EntriesController < ApplicationController
  before_action :find_goal
  before_action :find_entry, only: [:edit, :update, :show, :delete]

  def index
    @entries = @goal.entries
  end

  def new
    @entry = @goal.entries.build
  end

  def create
    @entry = @goal.entries.build(entry_params)
    if @entry.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @entry.update(entry_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @entry.destroy
    redirect_to root_path
  end

  private
  def find_goal
    @goal = Goal.find_by(id: params[:goal_id])
  end
  def find_entry
    @entry = Entry.find_by(id: params[:id])
  end
  def entry_params
    params.require(:entry).permit(:entry_title, :entry_desc, :entry_date, :entry_img)
  end
end
