module MessagesHelper
    def link_image url, target_link, options = {}
        unless url.nil?            
            if target_link.nil?
                image_tag(url, options)
            else
                link_to(image_tag(url, options), target_link, options)
            end
        end
    end

    def link_profile name, url, options = {}
        unless url.nil?            
            link_to(name, url, options)
        else
            name
        end
    end
end
