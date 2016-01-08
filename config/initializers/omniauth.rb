Rails.application.config.middleware.use OmniAuth::Builder do
  # binding.pry
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], {:scope => 'user_about_me'}
end