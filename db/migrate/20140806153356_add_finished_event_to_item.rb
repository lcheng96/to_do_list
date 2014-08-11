class AddFinishedEventToItem < ActiveRecord::Migration
  def change
    add_column :items, :finished_event, :boolean
  end
end
