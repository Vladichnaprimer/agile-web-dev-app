module ApplicationHelper

    def hidden_div_if(condotion, attributes = {}, &block)
        if condotion
            attributes["style"] = "display: none"
        end
        content_tag("div", attributes, &block)
    end

end
