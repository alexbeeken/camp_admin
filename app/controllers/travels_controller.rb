class TravelsController < FormsController

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

  def show
    @travel = Travel.find(params[:id])
  end

  private

  def current_user_only
    Travel.find(params[:id]).user_id == current_user.id
  end

  def secure_params
    params.require(:travel).permit(
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
