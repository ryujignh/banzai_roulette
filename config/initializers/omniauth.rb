Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'], :iframe => true
  {:scope => 'user_about_me, publish_actions, user_friends, email, name'}
end