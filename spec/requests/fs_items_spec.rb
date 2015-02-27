describe "FSItems API" do
  it 'returns a list of fs_items' do
    FactoryGirl.create_list(:fs_item, 10)
    get '/fs_items'
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['fs_items'].length).to eq(10)
  end
end
