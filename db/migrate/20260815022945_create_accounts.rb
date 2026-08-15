class CreateAccounts < ActiveRecord::Migration[8.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :account_type
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
