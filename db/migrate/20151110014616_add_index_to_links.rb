class AddIndexToLinks < ActiveRecord::Migration
  def change
    add_index :links, :cl_sortkey, using: :btree
  end
end
