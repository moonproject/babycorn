class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.string :title
      t.integer :amount
      t.references :user, foreign_key: true, null: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
