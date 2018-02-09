class User < ApplicationRecord
  has_many :experiments, dependent: :destroy
  validates :name, :email, presence: true, length: {maximum: 25}

  has_secure_password
  validates :password, presence: true, length: { minimum: 6, maximum: 256}
end
