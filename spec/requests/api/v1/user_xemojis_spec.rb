require 'rails_helper'

RSpec.describe "User XEmojis API", :type => :request do
  let(:user) { create(:user) }

  it 'fetches a list of xemojis for a user' do

    headers = { "ACCEPT" => "application/json" }

    get "/api/v1/users/#{user.id}/xemojis", :headers => headers

    # test for the 200 status-code
    expect(response).to be_successful
    expect(response.content_type).to eq("application/json")

    json = JSON.parse(response.body)

    # check that the write list of xemojis is returned. See spec/factories/users.rb for the ones added to a user.
    xemojis = json['xemojis']
    expect(xemojis.length).to eq(2)
    xemojis.each do |xemoji|
      expect(xemoji['category']).to eq('nyc')
      expect(xemoji['filename']).to start_with('testfilename')
      expect(xemoji['url']).to start_with('https://some.url.com/testimage')
      expect(xemoji['keywords'].length).to eq(2)
    end
  end
end
