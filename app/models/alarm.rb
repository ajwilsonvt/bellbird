class Alarm < ApplicationRecord
  # rails generate scaffold Alarm content:text
  has_many :upvotes, dependent: :destroy

  #belongs_to :user
  default_scope -> { order(created_at: :desc) }

  # regex that only allows all caps, numbers, and white space
  # consider adding symbols
  validates :content, format: { with: /\A[A-Z0-9.\s]+\z/ }, presence: true

  # consider not having user_id field? or enforcing 0 for all visitors?
end
