class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy edit_success update_success]

  def new
    @event = Event.new
  end

  def uncompleted_events
    @events = Event.where.not(status: :completed)
    @completed_events = Event.select { |event| DateTime.now > event.date }
    @completed_events = @completed_events.each do |event|
      status_completed(event)
    end
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
    if @event.success
      @event.success = false
    else
      @event.success = true
    end
    @event.save

    respond_to do |format|
      format.html { redirect_to history_path }
      format.json
    end
  end

  def completed_events
   @events = Event.where(status: :completed)
  end

  def loading
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :success, :status, :content)
  end

  def status_completed(event)
    event.status = 2
    event.save!
  end
end
