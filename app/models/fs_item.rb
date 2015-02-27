class FsItem < ActiveRecord::Base
  belongs_to :fs_item
  has_many :fs_items

  # Enums introduced in Rails 4.1
  # allow for storage and retrieval of values mapped to integers
  # from the database
  enum kind: [:file, :directory]

  # Returns FsItems that are all in one directory
  # Or ones at the top level
  def self.top_level_or_nested(id)
    id ? where(fs_item: id) : where(fs_item: nil)
  end
end
