class FsItem < ActiveRecord::Base
  belongs_to :fs_item
  has_many :fs_items

  def self.all_or_nested(id)
    if id
      where(fs_item: id)
    else
      all
    end
  end
end
