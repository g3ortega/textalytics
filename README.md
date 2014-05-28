# Textalytics

TODO: Write a better gem description

## Use

You have two options when creating a new client. Create environment variables for each API key:

    export SENTIMENT_KEY=<your key>
    export CLASSIFICATION_KEY=<...>
    export LANGUAGE_KEY=<...>
    export TOPICS_KEY=<...>
                                       
    t = Textalytics::Client.new

Otherwise you have to pass the keys as arguments:

    t = Textalytics::Client.new(sentiment: "insert your sentiment API key", classification: "insert your classification API key", topics: "...")
    

### Using Sentiment API

    # Example using Sentiment API
    movie_sentiment = t.sentiment(txt: 'La pelicula estuvo terrible, no volveré a ver una pelicula de ese terrible actor', model: 'es-general')
    movie_sentiment.score_tag
    movie_sentiment.sd_tag #etc, etc...
    
### Using Text Classification API
    
    TODO: Add some examples
    
    

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
