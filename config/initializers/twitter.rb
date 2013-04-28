begin
  twitter_config = YAML.load(File.open("#{Rails.root}/config/twitter.yml"))
rescue Errno::ENOENT => exception
  twitter_config = {}
end

Twitter.configure do |config|
  config.consumer_key = twitter_config["CONSUMER_KEY"] || ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret = twitter_config["CONSUMER_SECRET"] || ENV["TWITTER_CONSUMER_SECRET"]
  config.oauth_token = twitter_config["OAUTH_TOKEN"] || ENV["TWITTER_OAUTH_TOKEN"]
  config.oauth_token_secret = twitter_config["OAUTH_TOKEN_SECRET"] || ENV["TWITTER_OAUTH_TOKEN_SECRET"]
end