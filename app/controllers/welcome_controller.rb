class WelcomeController < ApplicationController
  def index
  	#@tweeps = TWITTER_CLIENT.friends(current_user.username).sort_by { |friend| friend.followers_count}.reverse
  end
  

  


end
