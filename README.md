SpreeTwitterTestimonials
========================

This is a simple gem which adds Twitter Testimonials to the front page of your store. Tweets are retrieved serverside and stored in the database. This has 2 benefits over the client side approach:

1.  **Performance**: Tweets are retrieved from the database instead of over an API and can be easily cached
2.  **SEO**: Since the Tweets are rendered on the page server side, they can be indexed by Google.

Setup
=======

In order for this to work you need to register an app with Twitter go gain access to their API.
After you've done this, you need to set the following environment variables:


    TWITTER_CONSUMER_KEY
    TWITTER_CONSUMER_SECRET
    TWITTER_OAUTH_TOKEN
    TWITTER_OAUTH_TOKEN_SECRET


If you prefer to not use environment variables you can alternatively create a initializer file with the following content:

    Twitter.configure do |config|
      config.consumer_key = YOUR_CONSUMER_KEY
      config.consumer_secret = YOUR_CONSUMER_SECRET
      config.oauth_token = YOUR_OAUTH_TOKEN
      config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
    end


Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 Johan Bruning, released under the New BSD License
