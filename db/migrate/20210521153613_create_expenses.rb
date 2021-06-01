class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.decimal :amount
      t.references :author, index: true, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
