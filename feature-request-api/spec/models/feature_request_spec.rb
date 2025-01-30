require 'rails_helper'

RSpec.describe FeatureRequest, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      feature_request = FeatureRequest.new(title: 'New Feature', description: 'Description of the new feature')
      expect(feature_request).to be_valid
    end

    it 'is not valid without a title' do
      feature_request = FeatureRequest.new(title: nil)
      expect(feature_request).to_not be_valid
    end

    it 'is not valid without a description' do
      feature_request = FeatureRequest.new(description: nil)
      expect(feature_request).to_not be_valid
    end
  end

  describe 'associations' do
    it { should have_many(:comments) }
    it { should belong_to(:user) }
  end
end