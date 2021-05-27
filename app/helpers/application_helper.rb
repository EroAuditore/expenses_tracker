module ApplicationHelper
    def render_image(expense)
        
        if expense.group_id?
            image_tag(expense.group.image, style: "width:100%")
        else
            
            content_tag(:span, "", data: { "feather" => 'dollar-sign' }, style: "width: 65px; height: 100px;")    
        end
    end
end
