Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "add_tweets_to_footer",
                     :insert_top => "section#bottom",
                     :partial => 'spree/twitter_testimonials/tweets',
                     :original => 'fa03ec3abd77f1ea58b6696bf9ff7ea21bf61400')