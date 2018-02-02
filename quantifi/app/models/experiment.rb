class Experiment < ApplicationRecord
	has_many :datapoints
	validates :name, presence: true,
                    length: { minimum: 3 }
end
