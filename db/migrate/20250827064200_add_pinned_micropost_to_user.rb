class AddPinnedMicropostToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :pinned_micropost_id, :int
  end
end
