TWITTER_CLIENT = Twitter::REST::Client.new do |config|
	config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	
	config.connection_options[:request] = {:opentimeout=>10, :timeout=>20}
end  

