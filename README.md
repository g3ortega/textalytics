# Textalytics

Ruby wrapper for the [Textalytics APIs](https://textalytics.com/api-core-language-analysis). The Textalytics gem provides an easy-to-use wrapper for Textalytics's REST APIs.

## Use

You have two options when creating a new client. Create environment variables for each API key:

    export SENTIMENT_KEY=<your key>
    export CLASSIFICATION_KEY=<...>
    export LANGUAGE_KEY=<...>
    export TOPICS_KEY=<...>
                                       
    t = Textalytics::Client.new

Otherwise you have to pass the keys as arguments:

    t = Textalytics::Client.new(sentiment: "insert your sentiment API key", classification: "insert your classification API key", topics: "...")
    

#### Using Sentiment API

    # You can read about the parameters that you can send in the request here
    # https://textalytics.com/core/sentiment-info#doc
    
    movie_sentiment = t.sentiment(txt: 'The movie was terrible, never see a movie of that director. Even the actors are bad.', model: 'en-general')
    movie_sentiment.score_tag
    movie_sentiment.sd_tag #etc, etc...
    
#### Using Text Classification API

    # You can read about the parameters that you can send in the request here
    # https://textalytics.com/core/class-info#doc
    
    title = 'Computer'
    text = <<PARAGRAPH
    A computer is a general purpose device that can be programmed to carry out 
    a set of arithmetic or logical operations automatically. Since a sequence of 
    operations can be readily changed, the computer can solve more than one kind of 
    problem.
    
    Conventionally, a computer consists of at least one processing element, typically
    a central processing unit (CPU), and some form of memory. The processing element 
    carries out arithmetic and logic operations, and a sequencing and control unit can 
    change the order of operations in response to stored information. Peripheral devices 
    allow information to be retrieved from an external source, and the result of operations 
    saved and retrieved.
    PARAGRAPH   
    
    t = Textalytics::Client.new
    #Model and other parameters can be found in the documentation page of the API
    classification = t.classification(title: title, txt: text, model: 'IPTC_en') 
    classification.categories  #etc  

#### Using Topics Extraction API

    # You can read about the parameters that you can send in the request here
    # https://textalytics.com/core/topics-info#doc
    
    t = Textalytics::Client.new
    
    topics = t.topics(txt: "A computer is a general purpose device that can be programmed to carry out a set of arithmetic or logical operations automatically. Since a sequence of operations can be readily changed, the computer can solve more than one kind of problem.",
             lang: 'en', tt: 'ectmu')
    
    topics.concepts
    topics.entities
    topics.time_expressions
             
    
    
#### Using Language Identification API

    # You can read about the parameters that you can send in the request here
    # https://textalytics.com/core/lang-info#doc
    
    t = Textalytics::Client.new
    
    lang = t.language_list(txt: 'A computer is a general purpose device that can be programmed')
    lang.first

    TODO: Add some examples
        

## Installation

Add this line to your application's Gemfile:

    gem 'textalytics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install textalytics
    
## TODO

* Write more tests
* Write a better documentation

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( http://github.com/<my-github-username>/textalytics/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
