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
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @inspo = @event.inspo
  end

  def update
    @event.update(event_params)
    if @event.inspo.genre == 'date'
      EventMailer.with(event: @event, user: current_user).invite_email.deliver_now
    end
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

  def loading
    Event.load(current_user)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :success, :status, :content)
  end


end
