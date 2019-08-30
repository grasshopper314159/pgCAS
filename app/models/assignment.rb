class Assignment < ApplicationRecord
  has_many :assignment_users, dependent: :destroy
  has_many :users, through: :assignment_users

  has_one_attached :grading_script_file

  enum assignment_type: [:assignment, :lab]
end
