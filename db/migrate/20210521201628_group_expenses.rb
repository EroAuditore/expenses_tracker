class GroupExpenses < ActiveRecord::Migration[6.1]
  
    def change
      create_table :GroupExpenses do |t|
        t.references :group, null: false, foreign_key: true
        t.references :expense, null: false, foreign_key: true
  
        t.timestamps
      end
    end
  
end
