class Gamesession < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  after_initialize :defaults

  def defaults
    unless persisted?

    end
  end



end