class FsItemsController < ApplicationController
  def index
    @fs_items = FsItem.all
    render json: @fs_items, root: 'fs_items'
  end

  def show
    @fs_item = FsItem.find(params[:id])
    render json: @fs_item
  end

  def destroy
    @fs_item = FsItem.find(params[:id]).delete
    render json: {}, status: :no_content
  end
end
