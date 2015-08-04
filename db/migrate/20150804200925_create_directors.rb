class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :director_name
      t.text :director_bio
      t.string :director_dob
      t.string :director_image_url

      t.timestamps null: false
    end
  end
end
