class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie_title
      t.integer :movie_year
      t.integer :movie_duration
      t.text :movie_desc
      t.string :movie_image_url

      t.timestamps null: false
    end
  end
end
