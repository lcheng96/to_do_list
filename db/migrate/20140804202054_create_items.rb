class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :event
      t.text :description
      t.string :time

      t.timestamps
    end
  end
end
