class VisitorsController < ApplicationController
  before_action :authenticate_user!, only: :dashboard

  def index
    if current_user
      redirect_to dashboard_path
    end
  end
end
