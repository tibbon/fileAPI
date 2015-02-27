require "rails_helper"

RSpec.describe "routes for FsItems", type: :routing do
  it 'routes GET /fs_items to the fs_items#index' do
    expect(get("/fs_items")).to route_to("fs_items#index")
  end

  it 'routes GET /fs_items/:id to the fs_items#show' do
    fs_item = FactoryGirl.create(:fs_item)
    expect(get("/fs_items/#{fs_item.id}")).to route_to('fs_items#show', id: fs_item.id.to_s)
  end

  it 'routes DELETE /fs_items/:id to the fs_items#destroy' do
    fs_item = FactoryGirl.create(:fs_item)
    expect(delete("/fs_items/#{fs_item.id}")).to route_to('fs_items#destroy', id: fs_item.id.to_s)
  end

  it 'routes PUT /fs_items/:id to fs_items#update' do
    fs_item = FactoryGirl.create(:fs_item)
    expect(put("/fs_items/#{fs_item.id}")).to route_to('fs_items#update', id: fs_item.id.to_s)
  end

  it 'routes POST /fs_items to fs_items#create' do
    expect(post('/fs_items')).to route_to('fs_items#create')
  end

  it 'routes /fs_items/all_directories to fs_items#all_directories' do
    expect(get('/fs_items/all_directories')).to route_to('fs_items#all_directories')
  end
end
