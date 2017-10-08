class LegalsController < ActionController::Base
  def new
    @legal = Legal.new()
  end

  def edit
    @legal = Legal.find(params[:id])
  end

  def create
    @legal = Legal.create!(secure_params.merge(user: current_user))
    redirect_to root_path
  end

  def update
    @legal = Legal.find(params[:id])
    @legal.update!(secure_params)
    redirect_to root_path
  end

  private

  def secure_params
    params.require(:legal).permit(
      :waiver_signature,
      :behavior_agreement
    )
  end
end
