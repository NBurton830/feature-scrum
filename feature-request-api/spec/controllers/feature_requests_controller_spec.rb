require 'rails_helper'

RSpec.describe FeatureRequestsController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns @feature_requests' do
      feature_request = FeatureRequest.create(title: 'New Feature', description: 'Feature description')
      get :index
      expect(assigns(:feature_requests)).to eq([feature_request])
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      let(:valid_attributes) { { feature_request: { title: 'New Feature', description: 'Feature description' } } }

      it 'creates a new FeatureRequest' do
        expect {
          post :create, params: valid_attributes
        }.to change(FeatureRequest, :count).by(1)
      end

      it 'redirects to the feature requests index' do
        post :create, params: valid_attributes
        expect(response).to redirect_to(feature_requests_path)
      end
    end

    context 'with invalid parameters' do
      let(:invalid_attributes) { { feature_request: { title: '', description: '' } } }

      it 'does not create a new FeatureRequest' do
        expect {
          post :create, params: invalid_attributes
        }.to change(FeatureRequest, :count).by(0)
      end

      it 'renders the index template' do
        post :create, params: invalid_attributes
        expect(response).to render_template(:index)
      end
    end
  end
end