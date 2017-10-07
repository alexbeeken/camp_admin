class VisitorsController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
end
