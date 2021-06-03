module ApplicationHelper
  def render_image(expense)
    if expense.groups.exists?
      if expense.groups.first.image.attached?
        image_tag(expense.groups.first.image, class: 'img-item')
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

  def total_expense
    Expense.includes(:author).where('author_id = ?', current_user.id).calculate(:sum, :amount)
  end

  def total_expense_external
    Expense.includes(:author).where('author_id = ?', current_user.id).calculate(:sum, :amount)
  end
end
