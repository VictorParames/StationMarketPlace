class Item < ApplicationRecord
  belongs_to :user, foreign_key: :users_id
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :categories, inclusion: { in: %w(Tools SpaceShips Consumables) }
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
end
