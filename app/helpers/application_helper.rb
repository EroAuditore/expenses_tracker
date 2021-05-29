module ApplicationHelper
  def render_image(expense)
    if expense.group_id?
      if expense.group.image.attached?
        image_tag(expense.group.image, class: 'img-item')
      else
        content_tag(:span, '', data: { 'feather' => 'users' },
                               style: 'width: 65px; height: 100px; display:block; margin:auto')
      end
    else
      content_tag(:span, '', data: { 'feather' => 'dollar-sign' }, style: 'width: 65px; height: 100px;')
    end
  end

  def render_image_group(group)
    if group.image.attached?
      image_tag(group.image, class: 'img-item')
    else

      content_tag(:span, '', data: { 'feather' => 'users' },
                             style: 'width: 65px; height: 100px; display:block; margin:auto')
    end
  end
end
