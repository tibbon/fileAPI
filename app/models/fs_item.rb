class FsItem < ActiveRecord::Base
  belongs_to :fs_item
  has_many :fs_items
end
