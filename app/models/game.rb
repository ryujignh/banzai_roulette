class Game < ActiveRecord::Base
  belongs_to :user
  has_many :gamesessions
  after_initialize :defaults

  def defaults
    unless persisted?
      self.round_number||=1
      self.round_open||=1
      self.players||=6
    end
  end

  def get_users
    gamesessions.map{ |gamesession| gamesession.user }
  end



end