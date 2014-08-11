class RemoveTimeFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :time, :string
  end
end
