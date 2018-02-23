class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = current_user.events.build(event_params)
    @event.save
    puts @event.errors.full_messages
    redirect_to event_path(@event.id)
  end

  def show
    @event = Event.find(params[:id])
    @all_attendees = @event.attendees.all
  end

  def index
    @events = Event.all
    @upcoming_events = @events.upcoming_events
    @past_events = @events.past_events
  end

  private

    def event_params
      params.require(:event).permit(:event_name, :date, :description, :creator_id)
    end
end
