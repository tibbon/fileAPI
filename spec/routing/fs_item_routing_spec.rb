require "rails_helper"

RSpec.describe "routes for FsItems", type: :routing do
  it 'routes /fs_items to the fs_items#index' do
    expect(get("/fs_items")).to route_to("fs_items#index")
  end

  it 'routes /fs_items/:1 to the fs_items#show' do
    fs_item = FactoryGirl.create(:fs_item)
    expect(get("/fs_items/#{fs_item.id}")).to route_to('fs_items#show', id: fs_item.id.to_s)
  end
end
