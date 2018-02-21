class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = @user.events.build(event_params)
    @event.save
    redirect_to event_path(@event.id)
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  private

    def event_params
      params.require(:event).permit(:event_name, :date, :description)
    end
end
