class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :comment
      t.string :name
      t.date :chosendate
      t.integer :page_id

      t.timestamps

    end
  end
end
