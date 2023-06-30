class User < ApplicationRecord
  has_many :microposts

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :email, presence: true
  validates :email, uniqueness: true
end
