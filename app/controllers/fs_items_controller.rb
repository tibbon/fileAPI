class FsItemsController < ApplicationController
  before_action :set_fs_item, only: [:destroy, :update, :show]

  def all_directories
    @all_directories = FsItem.directory
    render json: @all_directories, root: 'fs_items'
  end

  def index
    @fs_items = FsItem.top_level_or_nested(params[:fs_item])
    render json: @fs_items, root: 'fs_items'
  end

  def show
    render json: @fs_item
  end

  def destroy
    @fs_item.delete
    render json: {}, status: :no_content
  end

  def update
    @fs_item.update_attributes(fs_item_params)
    render json: @fs_item
  end

  def create
    fs_item = FsItem.new(fs_item_params)
    # I should check the integrity here, but I'm currently not
    render json: fs_item
  end

  private
  def set_fs_item
    @fs_item = FsItem.find(params[:id])
  end

  def fs_item_params
    params.require(:fs_item).permit(:name, :fs_item_id, :kind)
  end
end
