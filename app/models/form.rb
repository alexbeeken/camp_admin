class Form < ApplicationRecord
  belongs_to :event
  has_many :sections
end
