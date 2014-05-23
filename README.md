# Textalytics

TODO: Write a better gem description

## Use

    t = Textalytics,new(sentiment: "insert your sentiment API key", classification: "insert your classification API key", topics: "...")
    movie_sentiment = t.sentiment(txt: 'La pelicula estuvo terrible, no volveré a ver una pelicula de ese terrible actor', model: 'es-general')
    movie_sentiment.score_tag
    movie_sentiment.sd_tag #etc, etc...
    

## Installation

Add this line to your application's Gemfile:

    gem 'textalytics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install textalytics
    
## TODO

* Write tests
* Write a better documentation

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/<my-github-username>/textalytics/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
