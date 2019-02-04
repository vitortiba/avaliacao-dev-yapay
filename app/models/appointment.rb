class Appointment < ApplicationRecord
  belongs_to :service

  validates :name, presence: true
  validates :email, presence:true
  validates :date, presence: true
  validates :contact, presence: true
end
