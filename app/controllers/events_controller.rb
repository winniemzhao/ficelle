class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy edit_success update_success]
  skip_before_action :verify_authenticity_token

  def new
    @event = Event.new
  end

  def uncompleted_events
    @completed_events = Event.where(partner_id: current_user.partner).select { |event| DateTime.now > event.date }
    @completed_events = @completed_events.each do |event|
      status_completed(event)
    end

    @events = Event.where(partner_id: current_user.partner).where.not(status: :completed)
    @events = @events.sort_by(&:date)
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.partner_id = current_user.partner.id
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
    @event.success = !@event.success
    @event.save
    p "the params are: #{params}"

    respond_to do |format|
      format.html
      format.json { render json: @event }
    end
  end

  def completed_events
   @events = Event.where(partner_id: current_user.partner).where(status: :completed)
   @events = @events.sort_by(&:date).reverse
  end

  def loading
    Event.load(current_user)
  end

  def send_message
    @event.send_message(content: @event.content)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :success, :status, :content, :inspo_id)
  end

  def status_completed(event)
    event.status = 2
    event.save!
  end

end
