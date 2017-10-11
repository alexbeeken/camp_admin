class FormsController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_permission, except: :show

  def new
    @form = Form.new()
  end

  def edit
    @form = Form.find(params[:id])
  end

  def create
    @form = Form.create!(secure_params.merge(user: current_user))
    redirect_to root_path
  end

  def update
    @form = Form.find(params[:id])
    @form.update!(secure_params)
    redirect_to root_path
  end

  private

  def secure_params
    params.require(:form).permit()
  end

  def verify_permission
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
