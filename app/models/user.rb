class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :cas_authenticatable

  enum role: [:user, :admin]

  has_many :assignment_users, dependent: :destroy
  has_many :assignments, through: :assignment_users


  def cas_extra_attributes=(extra_attributes)
    extra_attributes.each do |name, value|
    case name.to_sym
      when :commonName
        self.name = value
      when :mailAlias
        self.email = value
      when :uid
        self.uid = value
      end
    end
  end
end
