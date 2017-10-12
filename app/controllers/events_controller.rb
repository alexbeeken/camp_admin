class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_ownership

  def new
    @event = Event.new()
  end

  def index
    @events = current_user.events
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    Event.create!(secure_params.merge(user: current_user))
    redirect_to events_path
  end

  private

  def secure_params
    params.require(:event).permit(
       :title,
       :start_date,
       :end_date,
       :location
    )
  end

  def verify_ownership
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
