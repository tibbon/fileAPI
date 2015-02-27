class FsItem < ActiveRecord::Base
  belongs_to :fs_item
  has_many :fs_items

  # Returns FsItems that are all in one directory
  # Or ones at the top level
  def self.top_level_or_nested(id)
    id ? where(fs_item: id) : where(fs_item: nil)
  end
end
