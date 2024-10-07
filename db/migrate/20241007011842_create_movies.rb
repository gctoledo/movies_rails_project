class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.date :release_date

      t.timestamps
    end
  end
end
