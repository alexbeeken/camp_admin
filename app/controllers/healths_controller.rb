class HealthsController < ActionController::Base
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

  private

  def secure_params
    params.require(:health).permit(
       :dietary_preferences,
       :dietary_restrictions,
       :allergies,
       :fitness_level
    )
  end
end
