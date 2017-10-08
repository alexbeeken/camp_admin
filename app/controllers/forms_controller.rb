class FormsController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_ownership, except: [:create, :new]

  private

  def verify_ownership
    unless current_user.admin? || current_user_only
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
