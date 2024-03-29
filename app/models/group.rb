class Group < ApplicationRecord
  belongs_to :user
  has_many :group_expenses
  has_many :expenses, through: :group_expenses
  has_one_attached :image
  validates :name, presence: true
end
