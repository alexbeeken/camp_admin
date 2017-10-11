class HealthsController < FormsController

  def new
    @health = Health.new()
  end

  def edit
    @health = Health.find(params[:id])
  end

  def create
    @health = Health.create!(secure_params.merge(user: current_user))
    redirect_to root_path
  end

  def update
    @health = Health.find(params[:id])
    @health.update!(secure_params)
    redirect_to root_path
  end

  def show
    @health = Health.find(params[:id])
  end

  private

  def current_user_only
    Health.find(params[:id]).user_id == current_user.id
  end

  def secure_params
    params.require(:health).permit(
       :dietary_preferences,
       :dietary_restrictions,
       :allergies,
       :fitness_level,
       :medical_history,
       :injuries,
       :tetanus_booster,
       :insurance_provider,
       :plan_number,
       :responsible_party
    )
  end
end
