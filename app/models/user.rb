class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  validates :username, uniqueness: true, presence: true
  validates_length_of :username, within: 4..10
  validates :password, length: { minimum: 8 }
  has_many :urls
end
