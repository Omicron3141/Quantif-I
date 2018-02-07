class Datapoint < ApplicationRecord
  belongs_to :experiment
  validates :value, presence: true
end
