class User < ApplicationRecord
  enum role: [:camper, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_many :applications, dependent: :destroy

  def last_completed_application
    return false unless applications.present?
    last_app = applications.last
    return last_app if last_app.created_at > 1.year.ago
    false
  end

  def set_default_role
    self.role ||= :camper
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
