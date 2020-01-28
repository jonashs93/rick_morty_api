require 'rails_helper'

RSpec.describe CharactersController, type: :controller do

  describe 'GET #show' do
    before { get :show, params: { id: character_id } }

    context 'when record found' do
      let(:character_id) { 1 }

      it { expect(response).to have_http_status :ok }
      it { expect(response.body).to have_json_type(String).at_path('air_date') }
    end

    context 'when record not found' do
      let(:character_id) { 0 }

      it { expect(response).to have_http_status :not_found }
      it { expect(response.body).to have_json_type(String).at_path('error') }
    end
  end
end
