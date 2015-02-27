class FsItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :fs_item, :kind
end
