class RemoveTimeFromItem2 < ActiveRecord::Migration
  def change
    remove_column :items, :time, :Time
  end
end
