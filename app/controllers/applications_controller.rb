class ApplicationsController < ActionController::Base
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

  def secure_params
    params.require(:application).permit(
       :first_name,
       :last_name,
       :email,
       :address_1,
       :address_2,
       :address_city,
       :address_state,
       :address_zip,
       :address_country,
       :phone,
       :gender,
       :parents,
       :birthdate,
       :voice_part,
       :lowest_note,
       :highest_note,
       :ear_learning,
       :read_music,
       :independent_voice,
       :independent_learning,
       :play_to_you,
       :like_to_move,
       :other_experience,
       :author_experience,
       :instrument_experience,
       :dietary_preferences,
       :dietary_restrictions,
       :allergies,
       :fitness_level,
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
