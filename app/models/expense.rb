class Expense < ApplicationRecord
  
  belongs_to :author, class_name: 'User' #:user
  belongs_to :group, optional: true
  scope :external, -> { where(group_id: nil) }
end
