class CreateScheduleItems < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_items do |t|
      t.text :category_name
      t.text :description
      t.text :option
      t.datetime :start_time
      t.datetime :end_time
      
      t.references :schedule, foreign_key: true
      t.timestamps
    end
  end
end
