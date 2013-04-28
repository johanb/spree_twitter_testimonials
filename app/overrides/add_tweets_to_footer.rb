Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "add_tweets_to_footer",
                     :insert_top => "section#bottom",
                     :partial => 'spree/twitter_testimonials/tweets')