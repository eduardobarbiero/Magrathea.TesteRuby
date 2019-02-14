require 'services/twitter/twitter_collector'

module TwitterHashTagCollect    
    def collect_all_hashtags
        # create the client instance collector
        twitter_collector = TwitterCollector.new(take: 3, permit_rt: true)

        # get all the hastags disponible
        Hashtag.all.each do |hashtag|
            # collect all twitters with this hashtag
            collected = twitter_collector.by_term "##{hashtag.name}"            
            collected.each do |message|
                # next if the user message is blank
                json_message = ActiveSupport::JSON.decode(message.to_json)
                
                next if json_message['user']['id_str'].blank?
                author = Author
                            .create_with(
                                name: json_message['user']['name'], 
                                url: json_message['user']['url'], 
                                profile_image_url: json_message['user']['profile_image_url']
                            )
                            .find_or_create_by(
                                integration_id: json_message['user']['id_str']
                            )
               
                # next if the id message is blank
                next if json_message['id_str'].blank?
                
                # if dont exist the message for this author, insert this
                unless author.exist_message? json_message['id_str']
                    author.messages.create(
                        hashtag: hashtag,
                        text: json_message['text'],
                        publication: json_message['created_at'],                        
                        integration_id: json_message['id_str']
                    )                
                end                
            end
        end        
    end
end