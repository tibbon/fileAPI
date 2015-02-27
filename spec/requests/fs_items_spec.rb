describe "FSItems API" do
  it 'returns a list of fs_items' do
    FactoryGirl.create_list(:fs_item, 10)
    get '/fs_items'
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['fs_items'].length).to eq(10)
  end

  it 'retrieves a fs_item' do
    fs_item = FactoryGirl.create(:fs_item)
    get "/fs_items/#{fs_item.id}"
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['name']).to eq(fs_item.name)
  end

  it 'deletes an fs_item by id' do
    fs_item = FactoryGirl.create(:fs_item)
    delete "/fs_items/#{fs_item.id}"
    expect(response).to be_success
  end
end
