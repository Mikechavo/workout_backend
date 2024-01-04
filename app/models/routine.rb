class Routine < ApplicationRecord
  belongs_to :user
  validates :muscle_group, :sets, :reps, :weight, :image, :notes, :user_id, presence: true

  validates :sets, :reps, :weight, numericality: { only_integer: true, greater_than: 0 }

end
