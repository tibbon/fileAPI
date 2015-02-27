describe "FSItems API" do
  it 'returns a list of all fs_items with no parent' do
    unused_parent_directory = FactoryGirl.create(:fs_item)

    # These are unwanted items, as they have a parent
    FactoryGirl.create_list(:fs_item, 5, fs_item: unused_parent_directory)

    # We want to see that only these without a top level parent return
    FactoryGirl.create_list(:fs_item, 9)
    get '/fs_items'
    expect(response).to be_success
    json = JSON.parse(response.body)

    # Response would have 15 items if all were returned
    expect(json['fs_items'].length).to eq(10)
  end

  it 'returns a list of all fs_items with the same parent' do
    parent_directory = FactoryGirl.create(:fs_item)
    nested_items = FactoryGirl.create_list(:fs_item, 5, fs_item: parent_directory)
    FactoryGirl.create_list(:fs_item, 10) # unnested items
    get '/fs_items', fs_item: parent_directory.id
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['fs_items'].first['fs_item']['id']).to eq parent_directory.id
    expect(json['fs_items'].length).to eq(5)
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

  it 'creates a new fs_item, which could be used to copy files' do
    parent = FactoryGirl.create(:fs_item)
    fs_item = FactoryGirl.create(:fs_item, fs_item: parent)
    post '/fs_items', fs_item: {name: fs_item.name, fs_item: parent.id }
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['name']).to eq fs_item.name
  end

  it 'updates an fs_item by id' do
    old_directory = FactoryGirl.create(:fs_item)
    new_directory = FactoryGirl.create(:fs_item)
    fs_item = FactoryGirl.create(:fs_item, fs_item: old_directory)
    put "/fs_items/#{fs_item.id}", fs_item: {fs_item_id: new_directory.id}
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['fs_item']['id']).to be new_directory.id
  end
end
