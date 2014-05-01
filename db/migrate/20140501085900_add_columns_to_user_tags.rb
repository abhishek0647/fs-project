class AddColumnsToUserTags < ActiveRecord::Migration
  def change
    add_column :user_tags, :user_id, :integer
    add_column :user_tags, :tag_id, :integer
  end
end
