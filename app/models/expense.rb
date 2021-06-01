class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User' #:user
  
  has_many :group_expenses
  has_many :groups, through: :group_expenses
  scope :external, -> { where(group_id: nil) }
  validates :amount, numericality: true
  validates :name, presence: true
end
