class AddTimeToItem2 < ActiveRecord::Migration
  def change
    add_column :items, :time, :DateTime
  end
end
