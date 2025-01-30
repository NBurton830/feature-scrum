class FeatureRequest
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String
  field :status, type: String, default: 'pending'

  validates :title, presence: true
  validates :description, presence: true
  validates :status, inclusion: { in: %w[pending approved rejected] }

  # Associations can be added here, e.g., belongs_to :user
end