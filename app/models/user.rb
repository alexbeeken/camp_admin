class User < ApplicationRecord
  enum role: [:camper, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_many :applications, dependent: :destroy

  def application_completed?
    return false unless applications.present?
    applications.last.created_at > 1.year.ago
  end

  def set_default_role
    self.role ||= :camper
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
