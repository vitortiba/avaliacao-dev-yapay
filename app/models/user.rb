class User < ApplicationRecord
  devise :database_authenticatable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true
  validates :cpf, presence:true, length: { is: 11 }, uniqueness: true
  validates :password, presence:true
  validates :password_confirmation, presence:true
end
