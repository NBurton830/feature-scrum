class FeatureRequestViewModel
  attr_reader :feature_request

  def initialize(feature_request)
    @feature_request = feature_request
  end

  def title
    feature_request.title
  end

  def description
    feature_request.description
  end

  def status
    feature_request.status.humanize
  end

  def created_at
    feature_request.created_at.strftime("%B %d, %Y")
  end

  def updated_at
    feature_request.updated_at.strftime("%B %d, %Y")
  end
end