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

  context 'when protocol is http' do
    # rubocop: disable RSpec/LetSetup
    let!(:base_url) { 'http://colorcop.net' }
    let!(:response) { connection.get '/' }
    # rubocop: enable RSpec/LetSetup

    it 'returns permanently redirected' do
      expect(response.status).to eq 301
    end
  end

  context 'when protocol is https' do
    # rubocop: disable RSpec/LetSetup
    let!(:base_url) { 'https://colorcop.net' }
    let!(:response) { connection.get '/' }
    # rubocop: enable RSpec/LetSetup

    it 'returns success' do
      expect(response.status).to eq 200
    end
  end
end
