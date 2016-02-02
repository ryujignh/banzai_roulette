class RemoveColumnFromGamesessions < ActiveRecord::Migration
  def change
    remove_column :gamesessions, :wins, :integer
  end
end
