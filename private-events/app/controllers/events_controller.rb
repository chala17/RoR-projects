class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = User.find(session[:current_user_id]).created_events.build(event_params)
    if @event.save
      redirect_to user_path(session[:current_user_id])
    else
      render :new
    end
  end

  def event_params
    params.require(:event).permit(:title, :description, :date)
  end
end
