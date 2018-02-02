class Datapoint < ApplicationRecord
  belongs_to :experiment
  validates :value, presence: true

  before_create :set_measured_at_to_now

  def set_measured_at_to_now
    self.measured_at = Time.now
  end
end
