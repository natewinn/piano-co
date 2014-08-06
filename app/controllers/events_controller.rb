class EventsController < ApplicationController
	before_action :authenticate_user!
  respond_to :json

  def index
    @events = Event.all
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @hash = Gmaps4rails.build_markers(@event.customer) do |customer, marker|
      marker.lat customer.latitude
      marker.lng customer.longitude
      marker.infowindow "<a target='blank' href='https://www.google.com/maps/dir//#{customer.latitude},#{customer.longitude}/'>Directions to #{customer.first_name} #{customer.last_name}</a>"
      marker.json({ title: customer.first_name })
    end
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
