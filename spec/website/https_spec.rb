# frozen_string_literal: true

describe 'colorcop.net' do
  let!(:base_url) { 'http://colorcop.net' }
  let!(:connection) do
    Faraday.new(url: base_url) do |faraday|
      faraday.request :json
      faraday.response :json, content_type: /\bjson$/
      faraday.adapter Faraday.default_adapter
    end
  end

  context 'with a http:// requestion' do
    let!(:response) { connection.get '/' }

    it 'redirects to https' do
      expect(response.status).to eq 301
    end
  end
end
