class CreateGamesessions < ActiveRecord::Migration
  def change
    create_table :gamesessions do |t|
      t.references :user, index: true
      t.references :game, index: true
      t.string :word
      t.integer :wins
      t.integer :loses
      t.boolean :active
      t.boolean :joined
    end
    add_foreign_key :gamesessions, :users
    add_foreign_key :gamesessions, :games
  end
end