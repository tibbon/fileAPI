class FsItemsController < ApplicationController
  def index
    @fs_items = FsItem.all
    render json: @fs_items, root: 'fs_items'
  end
end
