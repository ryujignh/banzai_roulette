class CreateTableUsers < ActiveRecord::Migration
  def change
    create_table :table_users do |t|
      t.references :user, index: true
      t.references :table, index: true
      t.string :word
      t.boolean :loser
    end
    add_foreign_key :table_users, :users
    add_foreign_key :table_users, :tables
  end
end
