class CreateGameSessions < ActiveRecord::Migration
  def change
    create_table :game_sessions do |t|
      t.references :user, index: true
      t.references :game, index: true
      t.string :word
      t.integer :wins
      t.integer :loses
      t.boolean :active
    end
    add_foreign_key :game_sessions, :users
    add_foreign_key :game_sessions, :games
  end
end