require "rails_helper"

RSpec.describe "routes for FsItems", type: :routing do
  it "routes /fs_items to the fs_items controller" do
    expect(get("/fs_items")).to route_to("fs_items#index")
  end
end
