class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
  belongs_to :author, class_name: 'User'

  validates :name, presence: true, length: { mininum: 2, maximum: 20 }

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
