class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :returning)
  end

  def update_params
    params.require(:user).permit(:first_name,
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
       :fitness_level)
  end
end
