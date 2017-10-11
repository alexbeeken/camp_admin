class FieldResponse < ApplicationRecord
  belongs_to :user
  belongs_to :form_response
  belongs_to :field
end
