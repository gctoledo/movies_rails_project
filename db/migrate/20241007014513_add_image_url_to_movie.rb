class AddImageUrlToMovie < ActiveRecord::Migration[7.2]
  def change
    add_column :movies, :image_url, :string
  end
end
