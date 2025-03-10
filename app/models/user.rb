class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :items, foreign_key: :users_id
  has_many :orders, dependent: :destroy
  has_many :items, through: :orders
end
