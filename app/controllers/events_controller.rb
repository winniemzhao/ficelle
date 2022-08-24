class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def uncompleted_events
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to dashboard_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to dashboard_path
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

  private

  def event_params
    params.require(:event).permit(:name, :date)
  end
end
