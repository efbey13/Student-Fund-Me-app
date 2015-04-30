CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['Access_Key_ID'],       # required
    :aws_secret_access_key  => ENV['Secret_Access_Key'],
    :region                 => 'us-west-2'      # required
  }
  config.fog_directory  = ENV['amazonbucket']
end
