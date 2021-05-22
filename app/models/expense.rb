class Expense < ApplicationRecord
  #belongs_to :user, :foreign_key => 'id'
  belongs_to :author, class_name: 'User' #:user
end
