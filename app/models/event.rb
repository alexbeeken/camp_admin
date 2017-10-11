class Event < ApplicationRecord
  has_many :forms
  belongs_to :user
end
