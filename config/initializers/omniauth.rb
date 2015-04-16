Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV['consumer_key'], ENV['consumer_secret'], scope: 'r_fullprofile r_emailaddress r_contactinfo'
end
