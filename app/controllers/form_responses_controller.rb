class FormResponsesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_form

  def new
    @form_response = FormResponse.new()
  end

  def edit
    @form_response = FormResponse.find(params[:id])
  end

  def create
    @form_response = FormResponse.create!(form: @form, user: current_user)
    @form.fields.pluck(:name).to_a.each do |field|
      @field_response = FormResponse.create!(secure_params.merge(
          user: current_user,
          form_response: @form_response,
          field: field,
          data: params[field.name],
          type: field.type
        )
      )
    end
    redirect_to root_path
  end

  def update
    @form_response = FormResponse.find(params[:id])
    @form_response.update!(secure_params)
    redirect_to root_path
  end

  private

  def find_form
    @form = FormResponse.find(params[:form_id]).form
  end

  def secure_params
    params.require(:form_response).permit(@form.fields.pluck(:name).to_a)
  end
end
