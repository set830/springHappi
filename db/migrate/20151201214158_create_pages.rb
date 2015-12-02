class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :for
      t.text :description
      t.string :photo
      t.string :title
      t.integer :user_id

      t.timestamps

    end
  end
end
