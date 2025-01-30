module ApplicationHelper
  def format_feature_request_date(date)
    date.strftime("%B %d, %Y")
  end

  def feature_request_status_label(status)
    case status
    when 'open'
      content_tag(:span, status.humanize, class: 'label label-success')
    when 'closed'
      content_tag(:span, status.humanize, class: 'label label-danger')
    else
      content_tag(:span, status.humanize, class: 'label label-default')
    end
  end

  def truncate_text(text, length = 100)
    text.length > length ? "#{text[0...length]}..." : text
  end
end