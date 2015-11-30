class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :name
      t.integer :page_id

      t.timestamps

    end
  end
end
