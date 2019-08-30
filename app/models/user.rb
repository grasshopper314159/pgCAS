class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :cas_authenticatable

  enum role: [:user, :admin]

  has_many :assignment_users, dependent: :destroy
  has_many :assignments, through: :assignment_users
end
