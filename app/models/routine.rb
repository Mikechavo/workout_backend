class Routine < ApplicationRecord
  belongs_to :user
  validates :muscle_group, presence: true
end
