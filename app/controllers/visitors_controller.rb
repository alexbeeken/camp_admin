class VisitorsController < ApplicationController

  def dashboard
    unless user_signed_in?
      redirect_to index_path and return
    end
  end
end
