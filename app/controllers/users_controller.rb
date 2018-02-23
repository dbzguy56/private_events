class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to action: "show", id: @user.id
    end
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events.all
    @attended_events = @user.attended_events.all
    @upcoming_events = @attended_events.upcoming_events
    @past_events = @attended_events.past_events
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
