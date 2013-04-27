require 'twitter'
class Spree::TwitterTestimony < ActiveRecord::Base
  attr_accessible :content, :tweet_id, :twitter_handle, :author_name

  scope :latest, order("tweet_id desc").limit(5)

  def self.load_tweets
    if count > 0
      ::Twitter.favorites(since_id: maximum(:tweet_id)).each do |tweet|
        unless exists?(tweet_id: tweet.id.to_s)
          create!(
            tweet_id: tweet.id.to_s,
            twitter_handle: tweet.user.screen_name,
            author_name: tweet.user.name,
            content: tweet.text
          )
        end
      end
    else
      ::Twitter.favorites.each do |tweet|
        unless exists?(tweet_id: tweet.id.to_s)
          create!(
            tweet_id: tweet.id.to_s,
            twitter_handle: tweet.user.screen_name,
            author_name: tweet.user.name,
            content: tweet.text
          )
        end
      end
    end
  end
end
