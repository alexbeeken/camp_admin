class ApplicationsController < ActionController::Base
  def new
    @application = Application.new()
  end
end
