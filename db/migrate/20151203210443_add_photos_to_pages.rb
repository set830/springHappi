class AddPhotosToPages < ActiveRecord::Migration
  def change
    add_column :pages, :photos, :json
  end
end
