class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :user_login, except: %I[index show]
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @users = User.all
    @today = Event.today
    @upcoming = Event.upcoming
    @previous = Event.previous
  end

  # GET /events/1
  # GET /events/1.json
  def show
    set_event
    @users = User.all
    @user = User.find(@event.creator.id)
    @attendees = Attendance.where(event_id: @event.id)
  end

  # GET /events/new
  def new
    @event = current_user.events.build
  end

  # GET /events/1/edit
  def edit; end

  def attending
    set_event
    @attendee = Attendance.new
    @attendee.event_id = @event.id
    @attendee.user_id = current_user.id
    @attendee.save
    redirect_to @event
  end

  # POST /events
  # POST /events.json
  def create
    @event = current_user.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :body, :date, :datetime, :creator_id)
  end

  def user_login
    redirect_to login_path if current_user.nil?
  end
end
