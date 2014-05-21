# require "textalytics/version"
# require "textalytics/client"

module Textalytics

  class << self


    def configure
      yield self
      true
    end

  end

  autoload :Api,     "textalytics/api"
  autoload :Client,  "textalytics/client"
  autoload :Errors,  "textalytics/errors"
  autoload :Helpers, "textalytics/helpers"
  autoload :Version, "textalytics/version"
end
