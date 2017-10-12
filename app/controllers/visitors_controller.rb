class VisitorsController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  before_action :admin_only, except: :dashboard

  def dashboard
    if current_user.admin?
      @campers = User.where(role: 'camper', accepted: true)
      render 'dashboard_admin'
    else
      render 'dashboard_camper'
    end
  end

  def new_applications
    @returning_campers = User.joins(:applications).where(role: 'camper', returning: true, accepted: nil)
    @new_campers = User.joins(:applications).where(role: 'camper', returning: (nil || false), accepted: nil)
    @decided_campers = User.joins(:applications).where(role: 'camper', accepted: (false || true))
  end

  private

  def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
