class CreateGroupExpnses < ActiveRecord::Migration[6.1]
  def change
    create_table :group_expenses, id: false do |t|
      t.integer :group_id
      t.integer :expense_id
    end
  end
end
