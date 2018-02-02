class Experiment < ApplicationRecord
    belongs_to :user
	has_many :datapoints, dependent: :destroy
	validates :name, presence: true,
                    length: { minimum: 3 }
end
