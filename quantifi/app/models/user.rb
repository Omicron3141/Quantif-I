class User < ApplicationRecord
  has_many :experiments, dependent: :destroy
  validates :name, :email, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
