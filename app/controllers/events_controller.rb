class EventsController < ApplicationController
  def uncompleted_events
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to dashboard_path
  end

  def edit_success
  end

  def update_success
  end

  def completed_events
  end
end
