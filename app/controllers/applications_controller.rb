class ApplicationsController < FormsController

  def new
    @application = Application.new()
  end

  def edit
    @application = Application.find(params[:id])
  end

  def create
    @application = Application.create!(secure_params.merge(user: current_user))
    redirect_to root_path
  end

  def update
    @application = Application.find(params[:id])
    @application.update!(secure_params)
    redirect_to root_path
  end

  private

  def current_user_only
    Application.find(params[:id]).user_id == current_user.id
  end

  def secure_params
    params.require(:application).permit(
       :no_smoking_confirm,
       :form_confirm,
       :tent_confirm,
       :returning_past_years,
       :returning_improvement_ideas,
       :new_why,
       :new_attitude,
       :new_inspiration,
       :new_other_skills
    )
  end
end
