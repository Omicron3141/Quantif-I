class Experiment < ApplicationRecord
    belongs_to :user
	has_many :datapoints, dependent: :destroy
	validates :name, presence: true,
                    length: { minimum: 3, maximum: 50}
    validates :description, length: { maximum: 250 }
end
