class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :round_number
      t.boolean :round_open
      t.string :word
    end
  end
end
