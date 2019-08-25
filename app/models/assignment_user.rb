class AssignmentUser < ApplicationRecord
  belongs_to :user
  belongs_to :assignment
  has_one_attached :file
  has_one_attached :rubric

  validates :file, file_size: { less_than_or_equal_to: 100.kilobytes }
end
