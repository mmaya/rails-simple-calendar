class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.string :name
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :description, null: false, limit: 30
      t.string :color

      t.timestamps
    end
  end
end
