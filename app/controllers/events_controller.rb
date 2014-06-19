class EventsController < ApplicationController
	before_action :authenticate_user!
  respond_to :json

  def index
    @events = Event.all
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.update_attributes(event_params)
    if @event.save
      redirect_to events_path
    end
  end

  def update
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit!
  end

end
