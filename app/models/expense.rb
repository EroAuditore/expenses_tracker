class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User' #:user
  belongs_to :group, optional: true
  scope :external, -> { where(group_id: nil) }
  validates :amount, numericality: { only_integer: true }
  validates :name, presence: true
end
