class User < ApplicationRecord
    has_many :experiments, dependent: :destroy
    validates :name, :email, presence: true
end
