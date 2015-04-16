Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV['consumer_key'], ENV['consumer_key'], scope: 'r_basicprofile r_fullprofile r_emailaddressr r_contactinfo'
end
