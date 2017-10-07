class TravelsController < ActionController::Base
  def new
    @travel = Travel.new()
  end

  def edit
    @travel = Travel.find(params[:id])
  end

  def create
    @travel = Travel.create!(secure_params.merge(user: current_user))
    redirect_to root_path
  end

  def update
    @travel = Travel.find(params[:id])
    @travel.update!(secure_params)
    redirect_to root_path
  end

  private

  def secure_params
    params.require(:health).permit(
      :arrival_time,
      :arrival_company,
      :arrival_number,
      :arrival_from,
      :departure_time,
      :departure_company,
      :departure_number,
      :departure_from,
      :travelling_with,
      :other_info
    )
  end
end
