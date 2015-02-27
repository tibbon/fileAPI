class AddTypeToFsItem < ActiveRecord::Migration
  def change
    add_column :fs_items, :kind, :integer, default: 0, null: false
  end
end
