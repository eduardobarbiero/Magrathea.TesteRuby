require 'services/twitter/twitter_client'

class TwitterCollector
    include TwitterClient

    attr_reader :result_type
    attr_reader :take
    attr_reader :permit_rt
    attr_reader :rt

    def initialize args
        # pre-definitions
        @result_type = args[:result_type] || "recent"
        @take = args[:take] || 50        
        @permit_rt = args[:permit_rt] || false

        # defaults
        @rt = "-rt" 
    end

    def by_term term              
        # verifications before action
        term << " #{@rt}" if @permit_rt.eql?(true)   

        # call to method search
        client.search(term, result_type: @result_type).take(@take).each do |tweet|
            tweet
        end
    end
end