class CreateProjectAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :project_accounts do |t|
      t.references :account, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
