class User < ActiveRecord::Base
has_many :games
has_many :gamesessions, dependent: :destroy

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.name
      user.email = auth.info.email
      user.facebook_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def facebook
    @facebook ||= Koala::Facebook::API.new(facebook_token)
  end

  #to post to facebook wall, u.facebook.put_wall_post("Giphy URL HERE")

end
