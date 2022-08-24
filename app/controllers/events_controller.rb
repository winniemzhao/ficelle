class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  def new
    @event = Event.new
  end

  def uncompleted_events
    @events = Event.where.not(status: :completed)
  end

  def show
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
  end

  def update
    @event.update(event_params)
    redirect_to dashboard_path
  end

  def destroy
    @event.destroy
    redirect_to dashboard_path
  end

  def edit_success
  end

  def update_success
  end

  def completed_events
    @events = Event.where(status: :completed)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :success, :status)
  end
end
